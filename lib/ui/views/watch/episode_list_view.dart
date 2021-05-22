import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart' as url;

import 'package:eiga/classes/scraper.dart';

class EpisodeEntry {
  final String title;
  final String link;

  EpisodeEntry(this.title, this.link);
}

class EpisodeListView extends StatefulWidget {
  final String animeLink;

  const EpisodeListView({required this.animeLink});

  @override
  _EpisodeListViewState createState() => _EpisodeListViewState();
}

class _EpisodeListViewState extends State<EpisodeListView> {
  @override
  void initState() {
    super.initState();
  }

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
                    children: List.generate(snapshot.data!.length, (index) {
                      return ElevatedButton(
                        onPressed: () =>
                            openEpisode(snapshot.data![index].link, context),
                        child: Text(snapshot.data![index].title),
                      );
                    }));
              }
          }
        });
  }

  Future<List<EpisodeEntry>> loadEpisodeList() async {
    final response = await http.get(Uri.parse(widget.animeLink));
    final soup = Scraper(response.body);
    return soup
        .findAll('ul.episodes.range.active > li > a')
        .map((e) => EpisodeEntry(e.text, soup.attr(e, 'href')!))
        .toList();
  }

  Future<void> openEpisode(String link, BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Launching episode"),
    ));
    String vidLink;
    final webview = HeadlessInAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(link)),
        onLoadStop: (InAppWebViewController controller, uri) async {
          const String js =
              "document.getElementById('example_video_1_html5_api').attributes['src'].textContent";
          vidLink =
              (await controller.evaluateJavascript(source: js)).toString();

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
                    return AlertDialog(
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                        "Unable to Launch",
                      ),
                      content: Text(
                        "Can't find any compatible video player. Install suitable video player for it to work.",
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  });
            }
          }
        });
    await webview.run();

    //url.launch(link);
  }
}
