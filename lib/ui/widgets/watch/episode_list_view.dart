import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:eiga/models/scraper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:eiga/models/episode_entry.dart';

import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

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
                      return ElevatedButton(
                        child: Text(snapshot.data[index].title),
                        onPressed: () =>
                            OpenEpisode(snapshot.data[index].link, context),
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

  void OpenEpisode(String link, BuildContext con) async {
    showDialog(
        context: con,
        builder: (context) {
          return SimpleDialog(
            contentPadding: EdgeInsets.all(10),
            children: [
              Container(child: Center(child: CircularProgressIndicator())),
            ],
          );
        });
    var response = await http.get(link);
    dom.Document d = parser.parse(response.body);
    List<dom.Element> a = d.querySelectorAll('script');
    var vidLink;
    for (dom.Element i in a) {
      if (i.innerHtml.contains("document.write( '<a ")) {
        String str = i.innerHtml;
        const start = 'href=\\"';
        const end = '\\">';

        final startIndex = str.indexOf(start);
        final endIndex = str.indexOf(end, startIndex + start.length);

        vidLink = str.substring(startIndex + start.length, endIndex);
        break;
      }
    }
    print('done');

    if (Platform.isAndroid) {
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
