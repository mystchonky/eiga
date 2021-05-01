import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import '../../graphql/graphql_api.dart';
import '../../models/helpers/media_format.dart';
import '../../models/helpers/media_relation.dart';
import '../../models/helpers/media_status.dart';
import '../../models/media_card_entry.dart';
import '../../models/sources/four_anime.dart';
import '../widgets/media_card.dart';
import 'studio_info.dart';

class MediaInfo extends StatefulWidget {
  final int id;

  const MediaInfo({required this.id});

  @override
  _MediaInfoState createState() => _MediaInfoState();
}

class _MediaInfoState extends State<MediaInfo> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          document: MediaInfoQuery(variables: MediaInfoArguments()).document,
          variables: {'id': widget.id}),
      builder: (
        QueryResult result, {
        Future<QueryResult?> Function()? refetch,
        FetchMore? fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.data == null && result.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final MediaInfo$Query$Media? anime =
            MediaInfo$Query.fromJson(result.data!).media;
        final animeName = anime?.title?.romaji;
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                /*
                * ImageCover
                * */
                Container(
                  height: 300,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
                    if (anime?.bannerImage != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: CachedNetworkImage(
                            imageUrl: anime?.bannerImage ?? "",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(0),
                              Colors.black26,
                              Colors.black87,
                              Colors.black,
                            ]),
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        //color: Colors.purple,
                        // height: 200,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: CachedNetworkImage(
                                      imageUrl: anime?.coverImage?.large ?? "",
                                      fit: BoxFit.contain,
                                      placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator()),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ))),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, bottom: 20),
                                child: Column(
                                  //mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      animeName ?? "N/A",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    if (anime?.title?.english != null)
                                      Text(
                                        anime?.title?.english ?? "N/A",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    Text(
                                      anime?.title?.native ?? "N/A",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.public),
                                          padding: EdgeInsets.all(0),
                                          iconSize: 20,
                                          color: Theme.of(context).accentColor,
                                          onPressed: () =>
                                              launchURL(anime!.siteUrl!),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.share),
                                          padding: EdgeInsets.all(0),
                                          iconSize: 20,
                                          color: Theme.of(context).accentColor,
                                          onPressed: () {
                                            if (anime?.siteUrl != null) {
                                              Share.share(anime!.siteUrl!);
                                            }
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*
                        * BUTTONS
                        * */
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                  onPressed: () {
                                    //TODO: Add favorite functionality
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.redAccent[400])),
                                  icon: Icon(Icons.favorite),
                                  label: Text("")),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: ElevatedButton.icon(
                                label: Text(""),
                                icon: Icon(Icons.play_arrow),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FourAnime(
                                              search: animeName ?? "")));
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context).accentColor)),
                              ),
                            ),
                          ],
                        ),

                        //Synopsis
                        Text(
                          "Synopsis",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        ExpandableText(
                          cleanText(anime?.description ?? ""),
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                          expandText: 'show more',
                          collapseText: 'show less',
                          maxLines: 5,
                        ),
                        SizedBox(height: 10),

                        //Information
                        Text(
                          "Information",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        infoBuilder(anime),
                        SizedBox(height: 10),

                        //Genres
                        genreBuilder(anime),
                        SizedBox(height: 10),

                        //Relations
                        if (anime!.relations!.edges!.isNotEmpty)
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Relations",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 10),
                                relationsBuilder(anime),
                                SizedBox(height: 10),
                              ]),

                        //Recommendations
                        if (anime.recommendations!.edges!.isNotEmpty)
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Recommendations",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 10),
                                recommendationsBuilder(anime),
                                SizedBox(height: 50)
                              ])
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget genreBuilder(MediaInfo$Query$Media? anime) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: anime?.genres?.map((gen) {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  //color: Theme.of(context).primaryColor
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  gen ?? "N/A",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ));
          }).toList() ??
          [],
    );
  }

  Widget infoBuilder(MediaInfo$Query$Media? anime) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Table(
            border: TableBorder(
                horizontalInside:
                    BorderSide(width: 0.4, color: Colors.white38)),
            children: anime!.type == MediaType.anime
                ? animeInfoBuilder(anime)
                : mangaInfoBuilder(anime)));
  }

  Widget infoTitle(String text) {
    final theme = TextStyle(fontFamily: "Rubik", fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(text, style: theme),
    );
  }

  Widget infoValue(String text) {
    final theme = TextStyle(fontFamily: "Rubik", fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        text,
        style: theme,
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget studioWidget(String text, int id) {
    final theme = TextStyle(
        fontFamily: "Rubik",
        fontWeight: FontWeight.bold,
        color: Theme.of(context).accentColor);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StudioInfo(id: id))),
        child: Text(
          text,
          style: theme,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  List<TableRow> animeInfoBuilder(MediaInfo$Query$Media? anime) {
    return [
      if (anime?.status == MediaStatus.releasing)
        TableRow(children: [
          infoTitle("Next Episode"),
          infoValue(
              "EP ${anime?.nextAiringEpisode?.episode} : ${nextAirDate(anime!.nextAiringEpisode!.airingAt)} ")
        ]),
      TableRow(children: [
        infoTitle("Episodes"),
        infoValue(
          anime?.episodes?.toString() ?? "0",
        ),
      ]),
      TableRow(children: [
        infoTitle("Score"),
        infoValue(
          "${(anime?.averageScore ?? 0) / 10}",
        )
      ]),
      TableRow(children: [
        infoTitle("Type"),
        infoValue(
          anime?.format?.name ?? "N/A",
        )
      ]),
      TableRow(children: [
        infoTitle("Studio"),
        if (anime?.studios?.nodes?[0]?.id != null)
          studioWidget(
            anime?.studios?.nodes?[0]?.name ?? "N/A",
            anime!.studios!.nodes![0]!.id,
          )
        else
          infoValue(
            anime?.studios?.nodes?[0]?.name ?? "N/A",
          )
      ]),
      TableRow(children: [
        infoTitle("Status"),
        infoValue(
          anime?.status?.name ?? "N/A",
        )
      ]),
      TableRow(children: [
        infoTitle("Duration"),
        infoValue(
          "${anime?.duration ?? 0} Min",
        )
      ]),
      if (anime?.status == MediaStatus.finished)
        TableRow(children: [
          infoTitle("Aired"),
          infoValue(
              anime?.startDate != null ? cleanDate(anime?.startDate) : "N/A")
        ])
    ];
  }

  List<TableRow> mangaInfoBuilder(MediaInfo$Query$Media? anime) {
    return [
      TableRow(children: [
        infoTitle("Score"),
        infoValue(
          "${(anime?.averageScore ?? 0) / 10}",
        )
      ]),
      TableRow(children: [
        infoTitle("Status"),
        infoValue(
          anime?.status?.name ?? "N/A",
        )
      ]),
      if (anime?.status == MediaStatus.finished)
        TableRow(children: [
          infoTitle("Chapters"),
          infoValue(
            anime?.chapters?.toString() ?? "N/A",
          )
        ]),
      if (anime?.status == MediaStatus.finished)
        TableRow(children: [
          infoTitle("Volumes"),
          infoValue(
            anime?.volumes?.toString() ?? "N/A",
          )
        ]),
      TableRow(children: [
        infoTitle("Start Date"),
        infoValue(
            anime?.startDate != null ? cleanDate(anime?.startDate) : "N/A")
      ]),
      if (anime?.status == MediaStatus.finished)
        TableRow(children: [
          infoTitle("End Date"),
          infoValue(anime?.endDate != null ? cleanDate(anime?.endDate) : "N/A")
        ]),
    ];
  }

  Widget relationsBuilder(MediaInfo$Query$Media? anime) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: anime?.relations?.edges?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final relation = anime?.relations?.edges?[index]?.node;
          final relationType =
              anime?.relations?.edges?[index]?.relationType?.name;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: MediaCard(
                anime: MediaCardEntry(
                    relation?.id ?? 00,
                    relation?.title?.userPreferred ?? "",
                    relation?.coverImage?.large ?? "",
                    relation: relationType)),
          );
        },
      ),
    );
  }

  Widget recommendationsBuilder(MediaInfo$Query$Media? anime) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: anime?.recommendations?.edges?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final recommendation =
              anime?.recommendations?.edges?[index]?.node?.mediaRecommendation;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: MediaCard(
                anime: MediaCardEntry(
              recommendation?.id ?? 00,
              recommendation?.title?.userPreferred ?? "",
              recommendation?.coverImage?.large ?? "",
            )),
          );
        },
      ),
    );
  }

  String nextAirDate(int airingAt) {
    final airDate = DateTime.fromMillisecondsSinceEpoch(airingAt * 1000);
    final diff = airDate.difference(DateTime.now());

    final day = diff.abs().inDays;
    final hour = diff.abs().inHours.remainder(24);
    final min = diff.abs().inMinutes.remainder(60);

    return "${day}d ${hour}h ${min}m";
  }

  String cleanText(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;

    return parsedString;
  }

  String cleanDate(MediaInfo$Query$Media$FuzzyDate? dateIn) {
    final date =
        DateTime(dateIn?.year ?? 0, dateIn?.month ?? 0, dateIn?.day ?? 0);
    final DateFormat formatter = DateFormat('dd MMMM, y');
    return formatter.format(date);
  }

  Future<void> launchURL(String _url) async => url.launch(_url);
}
