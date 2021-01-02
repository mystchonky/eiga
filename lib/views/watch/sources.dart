import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';

class FourAnime extends StatefulWidget {
  final String search;

  FourAnime({this.search});

  @override
  _FourAnimeState createState() => _FourAnimeState();
}

class _FourAnimeState extends State<FourAnime> {
  var _webscr;

  @override
  void initState() {
    super.initState();

    _webscr = WebScraper("https://4anime.to");
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void loadData() async {
    if (await _webscr.loadWebPage('/?s=' + "fairy")) {
      List<Map<String, dynamic>> elements =
          _webscr.getElement('section.landingHero-1OHkS9 > div.container > div#headerDIV_2 > div#headerDIV_95 > a', ['href']);
      elements.forEach((element) {print(element['title']);});
    }
    print("Data Loaded");
  }
}
