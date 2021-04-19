import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

import '../../graphql/graphql_api.dart';
import '../../models/anime_card_entry.dart';
import '../../models/helpers/media_format.dart';
import '../../models/helpers/media_relation.dart';
import '../../models/helpers/media_status.dart';
import '../../models/sources/four_anime.dart';
import '../widgets/anime_card.dart';

class AnimeInfo extends StatefulWidget {
  final int id;

  const AnimeInfo({required this.id});

  @override
  _AnimeInfoState createState() => _AnimeInfoState();
}

class _AnimeInfoState extends State<AnimeInfo> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          document: AnimeInfoQuery(variables: AnimeInfoArguments()).document,
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

        final AnimeInfo$Query$Media? anime =
            AnimeInfo$Query.fromJson(result.data!).media;
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
                    // ignore: sized_box_for_whitespace
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
                                label: Text("Watch Now"),
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

                        /*
                        * SYNOPSIS
                        * */
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

                        /*
                        * INFORMATION
                        * */
                        Text(
                          "Information",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Theme(
                          data: Theme.of(context).copyWith(
                            textTheme: TextTheme(
                              bodyText1: TextStyle(
                                fontFamily: "Rubik",
                              ),
                            ),
                          ),
                          child: Builder(builder: (BuildContext context) {
                            final theme = Theme.of(context).textTheme.bodyText1;

                            Widget infoTitle(String text) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: Text(text, style: theme),
                              );
                            }

                            Widget infoValue(String text) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: Text(
                                  text,
                                  style: theme,
                                  textAlign: TextAlign.end,
                                ),
                              );
                            }

                            return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Table(
                                  border: TableBorder(
                                      horizontalInside: BorderSide(
                                          width: 0.4, color: Colors.white38)),
                                  children: [
                                    TableRow(children: [
                                      infoTitle(
                                        "Episodes",
                                      ),
                                      infoValue(
                                        anime?.episodes?.toString() ?? "0",
                                      ),
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Popularity"),
                                      infoValue(
                                        "#${anime?.popularity ?? 0}",
                                      )
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
                                      infoValue(
                                        anime?.studios?.nodes?[0]?.name ??
                                            "N/A",
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
                                    TableRow(children: [
                                      infoTitle("Aired"),
                                      infoValue(anime?.startDate != null
                                          ? "N/A"
                                          : cleanDate(anime?.startDate))
                                    ])
                                  ],
                                ));
                          }),
                        ),
                        SizedBox(height: 10),

                        /*
                        * GENRES
                        * */
                        Wrap(
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
                        ),
                        SizedBox(height: 10),

                        /*
                        * Relations
                        * */
                        Text(
                          "Relations",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        // fixme: broken connections!
                        Container(
                          height: 160,
                          child: ListView.builder(
                            itemCount: anime?.relations?.edges?.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final relation =
                                  anime?.relations?.edges?[index]?.node;
                              final relationType = anime?.relations
                                  ?.edges?[index]?.relationType?.name;
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: AnimeCard(
                                    anime: AnimeCardEntry(
                                        relation?.id ?? 00,
                                        relation?.title?.userPreferred ?? "",
                                        relation?.coverImage?.large ?? "",
                                        relation: relationType)),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  String cleanText(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;

    return parsedString;
  }

  String cleanDate(AnimeInfo$Query$Media$FuzzyDate? dateIn) {
    final date =
        DateTime(dateIn?.year ?? 0, dateIn?.month ?? 0, dateIn?.day ?? 0);
    final DateFormat formatter = DateFormat('dd MMMM, y');
    return formatter.format(date);
  }
}
// TODO : FIX POPULAR UPCOMING
// TODO: fix ongoing huge anime episodes
