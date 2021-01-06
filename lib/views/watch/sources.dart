import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:beautifulsoup/beautifulsoup.dart';

enum currentView { animeList, episodeList }

class FourAnime extends StatefulWidget {
  final String search;

  FourAnime({this.search});

  @override
  _FourAnimeState createState() => _FourAnimeState();
}

class _FourAnimeState extends State<FourAnime> {
  currentView view = currentView.animeList;
  String animeLink = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: getView()),
    );
  }

  Widget getView() {
    switch (view) {
      case currentView.animeList:
        return AnimeListView(
          search: widget.search,
          onAnimeSelected: (link) {
            setState(() {
              view = currentView.episodeList;
              animeLink = link;
            });
          },
        );
      case currentView.episodeList:
        return EpisodeListView(
          animeLink: animeLink,
        );
    }
  }
}

class AnimeEntry {
  final String title;
  final String link;

  AnimeEntry(this.title, this.link);
}

class AnimeListView extends StatelessWidget {
  final String postUrl = "https://4anime.to/wp-admin/admin-ajax.php";
  final String search;
  final Function(String) onAnimeSelected;

  final body;

  AnimeListView({Key key, this.search, this.onAnimeSelected})
      : body = {
          "action": "ajaxsearchlite_search",
          "aslp": search,
          "asid": "1",
          "options": "qtranslate_lang=0&set_intitle=None&customset%5B%5D=anime"
        },
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadAnimeList(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Card(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                height: 30,
                                child: Text(
                                  snapshot.data[index].title,
                                  style: TextStyle(fontSize: 16),
                                ))),
                        onTap: () => onAnimeSelected(snapshot.data[index].link),
                      );
                    });
          }
        });
  }

  Future<List> loadAnimeList() async {
    var response = await http.post(postUrl, body: body);
    var soup = Beautifulsoup(response.body);
    return soup
        .find_all('div.info > a')
        .map((e) => AnimeEntry(e.text, soup.attr(e, 'href')))
        .toList();
  }
}

class EpisodeEntry {
  final String title;
  final String link;

  EpisodeEntry(this.title, this.link);
}

class EpisodeListView extends StatelessWidget {
  final String animeLink;

  const EpisodeListView({Key key, @required this.animeLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadEpisodeList(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else
                return GridView.count(
                    padding: EdgeInsets.all(20),
                    crossAxisCount: 6,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(snapshot.data.length, (index) {
                      return RaisedButton(
                        child: Text(snapshot.data[index].title),
                        onPressed: () => OpenEpisode(snapshot.data[index].link),
                      );
                    }));
          }
        });
  }

  Future<List> loadEpisodeList() async {
    var response = await http.get(animeLink);
    var soup = Beautifulsoup(response.body);
    return soup
        .find_all('ul.episodes.range.active > li > a')
        .map((e) => EpisodeEntry(e.text, soup.attr(e, 'href')))
        .toList();
  }

  void OpenEpisode(String link) async {
    var response = await http.get(link);
    var soup = Beautifulsoup(response.body);
    var vidLink = Beautifulsoup(soup.find(id:'div.videojs-desktop').innerHtml).find(id: 'source').attributes['src'];

    if (Platform.isAndroid){
      AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: vidLink,
        type: 'video/**',
        flags: [Flag.FLAG_GRANT_READ_URI_PERMISSION],

      ); 
      await intent.launch();
    }
  }
}
