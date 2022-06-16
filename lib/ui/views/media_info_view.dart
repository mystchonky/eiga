
import 'package:eiga/classes/adapters/library_item.dart';
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/media_info_view/cover.dart';
import 'package:eiga/ui/widgets/media_info_view/info.dart';
import 'package:eiga/ui/widgets/media_info_view/media_list.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:html/parser.dart';

class MediaInfo extends StatefulWidget {
  final int id;

  const MediaInfo({required this.id});

  @override
  _MediaInfoState createState() => _MediaInfoState();
}

class _MediaInfoState extends State<MediaInfo> {
  late bool isInLibrary = box.containsKey(widget.id);
  final box = Hive.box<LibraryItem>('library');

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: MediaInfoQuery(variables: MediaInfoArguments()).document,
        variables: {'id': widget.id},
      ),
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
                Cover(
                  bannerImage: anime?.bannerImage,
                  coverImage: anime!.coverImage!.large!,
                  mediaUrl: anime.siteUrl!,
                  nameUserPreferred: anime.title!.romaji!,
                  nameEnglish: anime.title?.english,
                  nameJapanese: anime.title?.native,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //BUTTONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () async {
                                if (!isInLibrary) {
                                  await box.put(
                                    widget.id,
                                    LibraryItem(
                                      id: anime.id,
                                      name: animeName!,
                                      coverUrl: anime.coverImage!.large!,
                                    ),
                                  );
                                } else {
                                  await box.delete(widget.id);
                                }

                                setState(() {
                                  isInLibrary = box.containsKey(widget.id);
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.redAccent[400],
                                ),
                              ),
                              icon: Icon(
                                isInLibrary
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                              ),
                              label: Text(""),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),

                      //Synopsis
                      header("Synopsis"),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ExpandableText(
                          cleanText(anime.description ?? ""),
                          style: TextStyle(color: Colors.grey),
                          expandText: 'show more',
                          collapseText: 'show less',
                          maxLines: 5,
                        ),
                      ),

                      //Information
                      header("Information"),
                      SizedBox(height: 5),
                      InfoBuilder(media: anime),
                      SizedBox(height: 10),

                      //Genres
                      genreBuilder(anime),
                      SizedBox(height: 10),

                      //Relations
                      if (anime.relations!.edges!.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            header("Relations"),
                            SizedBox(height: 10),
                            RelationsBuilder(media: anime),
                            SizedBox(height: 10),
                          ],
                        ),

                      //Recommendations
                      if (anime.recommendations!.edges!.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            header("Recommendations"),
                            SizedBox(height: 10),
                            RecommendationsBuilder(media: anime),
                            SizedBox(height: 50)
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget header(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
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
              ),
              padding: EdgeInsets.all(5),
              child: Text(
                gen ?? "N/A",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            );
          }).toList() ??
          [],
    );
  }

  String cleanText(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;

    return parsedString;
  }
}
