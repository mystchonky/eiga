import 'package:cached_network_image/cached_network_image.dart';
import '../../models/sources/4anime.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../graphql/graphql_api.dart';
import 'package:html/parser.dart';

class AnimeInfo extends StatelessWidget {
  final int id;

  AnimeInfo({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          documentNode: AnimeInfoQuery().document, variables: {'id': id}),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.data == null && result.loading) {
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
                  child: Stack(children: [
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: anime.coverImage.large,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
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
                          ])),
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
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      alignment: WrapAlignment.start,
                      children: anime.genres.map((gen) {
                        return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).primaryColor),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              gen,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ));
                      }).toList(),
                    )),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 10),
                    Container(
                      constraints: BoxConstraints(maxHeight: 250),
                      // child: Expanded(
                      //   flex: 1,
                      child: SingleChildScrollView(
                        child: Text(
                          cleanText(anime.description),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      //                  ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton.icon(
                        label: Text("Watch Now"),
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      FourAnime(search: animeName)));
                        }),
                  ],
                )
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
