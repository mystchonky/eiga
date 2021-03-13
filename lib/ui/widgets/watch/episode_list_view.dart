import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:eiga/models/episode_entry.dart';
import 'package:eiga/models/scraper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class EpisodeListView extends StatelessWidget {
  final String animeLink;

  const EpisodeListView({Key key, @required this.animeLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadEpisodeList(),
        builder: (context, AsyncSnapshot<List<EpisodeEntry>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return GridView.count(
                    padding: EdgeInsets.all(20),
                    crossAxisCount: 6,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(snapshot.data.length, (index) {
                      return ElevatedButton(
                        onPressed: () =>
                            openEpisode(snapshot.data[index].link, context),
                        child: Text(snapshot.data[index].title),
                      );
                    }));
              }
          }
        });
  }

  Future<List<EpisodeEntry>> loadEpisodeList() async {
    final response = await http.get(animeLink);
    final soup = Scraper(response.body);
    return soup
        .findAll('ul.episodes.range.active > li > a')
        .map((e) => EpisodeEntry(e.text, soup.attr(e, 'href')))
        .toList();
  }

  Future<void> openEpisode(String link, BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            //contentPadding: EdgeInsets.all(10),
            children: [
              // ignore: avoid_unnecessary_containers
              Container(child: Center(child: CircularProgressIndicator())),
            ],
          );
        });
    final response = await http.get(link);
    final dom.Document d = parser.parse(response.body);
    final List<dom.Element> a = d.querySelectorAll('script');
    String vidLink;
    for (final dom.Element i in a) {
      if (i.innerHtml.contains("document.write( '<a ")) {
        final String str = i.innerHtml;
        const start = 'href=\\"';
        const end = '\\">';

        final startIndex = str.indexOf(start);
        final endIndex = str.indexOf(end, startIndex + start.length);

        vidLink = str.substring(startIndex + start.length, endIndex);
        break;
      }
    }

    if (Platform.isAndroid) {
      final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: vidLink,
        type: 'video/**',
        flags: [Flag.FLAG_GRANT_READ_URI_PERMISSION],
      );
      try {
        await intent.launch();
      } on PlatformException {
        Navigator.of(context, rootNavigator: true).pop();
        showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  "Unable to Launch",
                  textAlign: TextAlign.center,
                ),
                children: const [
                  Text(
                    "Can't find any compatible video player. Install suitable video player for it to work.",
                    textAlign: TextAlign.center,
                  )
                ],
              );
            });
      }
    }
  }
}
