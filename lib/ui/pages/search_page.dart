import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/search_pane.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchStr = "";
  int currentPage = 1;
  int perPage = 5;
  final searchController = TextEditingController();
  bool shouldShowClear = false;

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      if (shouldShowClear != searchController.text.isNotEmpty) {
        setState(() {
          shouldShowClear = searchController.text.isNotEmpty;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              suffixIcon: shouldShowClear
                  ? IconButton(
                      icon: Icon(Icons.cancel),
                      color: Colors.white70,
                      onPressed: () {
                        searchController.clear();
                      })
                  : null),
          controller: searchController,
          onSubmitted: updateSearch,
          //onChanged: changeListener,
          style: TextStyle(fontFamily: "Rubik", fontSize: 20),
          textInputAction: TextInputAction.search,
        ),
      ),
      body: searchView(),
    );
  }

  void updateSearch(String str) {
    if (str != "" && str.length > 1) {
      setState(() {
        searchStr = str;
        currentPage = 1;
      });
    }
  }

  Widget searchView() {
    if (searchStr == "") {
      // ignore: avoid_unnecessary_containers
      return Container(child: Center(child: Text("Enter ")));
    } else {
      return SearchPane(
        searchStr: searchStr,
        currentPage: currentPage,
      );
    }
  }
}
