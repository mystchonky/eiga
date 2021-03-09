import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:html/parser.dart';

import '../../graphql/graphql_api.dart';
import '../../models/sources/four_anime.dart';

class AnimeInfo extends StatelessWidget {
  final int id;

  const AnimeInfo({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          document: AnimeInfoQuery().document, variables: {'id': id}),
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

        final anime = AnimeInfo$Query.fromJson(result.data).media;
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
                                  0x99000000),
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
                Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    width: double.infinity,
                    child: Wrap(
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
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        label: Text("Favorite")),
                    ElevatedButton.icon(
                        label: Text("Watch Now"),
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FourAnime(search: animeName)));
                        }),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      maxLines: 3,
                    ),
                  ],
                ),
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
}
