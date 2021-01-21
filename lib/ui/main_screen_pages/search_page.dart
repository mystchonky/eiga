import 'package:flutter/material.dart';
import '../widgets/search_pane.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchStr = "Attack on Titan";
  int currentPage = 1;
  int perPage = 5;
  final searchController = TextEditingController();

  void updateSearch(String str) {
    setState(() {
      if (str != "" && str.length > 2) {
        searchStr = str;
        currentPage = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(children: [
        AppBar(
          title: TextField(
            decoration: new InputDecoration(
              hintText: "Search",
            ),
            controller: searchController,
            onSubmitted: updateSearch,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  updateSearch(searchController.text);
                }),
          ],
        ),
        SizedBox(height: 10),
        SearchPane(
          searchStr: searchStr,
          currentPage: currentPage,
        ),
      ]),
    );
  }
}
