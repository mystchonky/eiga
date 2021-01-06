import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:beautifulsoup/beautifulsoup.dart';

enum currentMode { animeList, episodeList }

class FourAnime extends StatefulWidget {
  final String search;

  FourAnime({this.search});

  @override
  _FourAnimeState createState() => _FourAnimeState();
}

class _FourAnimeState extends State<FourAnime> {
  var postUrl = "https://4anime.to/wp-admin/admin-ajax.php";
  var body;

  @override
  void initState() {
    super.initState();
    body = {
      "action": "ajaxsearchlite_search",
      "aslp": widget.search,
      "asid": "1",
      "options": "qtranslate_lang=0&set_intitle=None&customset%5B%5D=anime"
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
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
                          return Text(snapshot.data[index].title);
                        });
              }
            }),
      ),
    );
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

class AnimeEntry {
  final String title;
  final String link;

  AnimeEntry(this.title, this.link);
}
