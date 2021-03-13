import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eiga/models/anime_card_entry.dart';
import 'package:eiga/ui/widgets/anime_card.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

import '../../graphql/graphql_api.dart';
import '../../models/helpers/media_format.dart';
import '../../models/helpers/media_relation.dart';
import '../../models/helpers/media_status.dart';
import '../../models/sources/four_anime.dart';

class AnimeInfo extends StatefulWidget {
  final int id;

  const AnimeInfo({@required this.id});

  @override
  _AnimeInfoState createState() => _AnimeInfoState();
}

class _AnimeInfoState extends State<AnimeInfo> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          document: AnimeInfoQuery().document, variables: {'id': widget.id}),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.data == null && result.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final AnimeInfo$Query$Media anime =
            AnimeInfo$Query.fromJson(result.data).media;
        final animeName = anime.title.romaji;
        final animeColor = anime.coverImage.color ?? "#000000";

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
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: anime.coverImage.large,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.001)),
                        )),
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(int.parse(animeColor.substring(1, 7),
                                      radix: 16) +
                                  0xFF000000),
                              Color(int.parse(animeColor.substring(1, 7),
                                      radix: 16) +
                                  0x66000000),
                              Colors.black26,
                              Colors.black87,
                              Colors.black,
                            ]),
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        //color: Colors.purple,
                        // height: 200,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: CachedNetworkImage(
                                      imageUrl: anime.coverImage.large,
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
                                      animeName,
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    if (anime.title.english != null)
                                      Text(
                                        anime.title.english,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    Text(
                                      anime.title.native,
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
                                            builder: (context) =>
                                                FourAnime(search: animeName)));
                                  }),
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
                        ExpandableText(
                          cleanText(anime.description),
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
                                        anime.episodes.toString(),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Popularity"),
                                      infoValue(
                                        "#${anime.popularity}",
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Score"),
                                      infoValue(
                                        "${anime.averageScore / 10}",
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Type"),
                                      infoValue(
                                        anime.format.name,
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Studio"),
                                      infoValue(
                                        anime.studios.nodes[0].name,
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Status"),
                                      infoValue(
                                        anime.status.name,
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Duration"),
                                      infoValue(
                                        "${anime.duration} Min",
                                      )
                                    ]),
                                    TableRow(children: [
                                      infoTitle("Aired"),
                                      infoValue(
                                        cleanDate(anime.startDate),
                                      )
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
                          children: anime.genres.map((gen) {
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
                                  gen,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ));
                          }).toList(),
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
                          height: 140,
                          child: ListView.builder(
                            itemCount: anime.relations.edges.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final relation =
                                  anime.relations.edges[index].node;
                              final relationType = anime
                                  .relations.edges[index].relationType.name;
                              return AnimeCard(
                                  anime: AnimeCardEntry(
                                      relation.id,
                                      relation.title.userPreferred,
                                      relation.coverImage.large,
                                      relation: relationType));
                            },
                          ),
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
    final String parsedString = parse(document.body.text).documentElement.text;

    return parsedString;
  }

  String cleanDate(AnimeInfo$Query$Media$FuzzyDate dateIn) {
    final date = DateTime(dateIn.year, dateIn.month, dateIn.day);
    final DateFormat formatter = DateFormat('dd MMMM, y');
    return formatter.format(date);
  }
}
// TODO : FIX POPULAR UPCOMING
// TODO: fix ongoing huge anime episodes
