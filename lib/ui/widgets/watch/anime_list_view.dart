import 'package:eiga/models/scraper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:eiga/models/anime_entry.dart';

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
