import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
  Widget build(BuildContext context) {
    searchController.addListener(() {
      if (shouldShowClear != searchController.text.isNotEmpty) {
        setState(() {
          shouldShowClear = searchController.text.isNotEmpty;
        });
      }
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
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
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              searchController.clear();
                            })
                        : null),
                controller: searchController,
                onSubmitted: updateSearch,
                style: TextStyle(fontFamily: "Rubik", fontSize: 20),
                textInputAction: TextInputAction.search,
              ),
            ),
            IconButton(
                icon: Icon(Icons.tune),
                onPressed: () => showMaterialModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    bounce: true,
                    builder: (context) {
                      return Container(
                          height: 300,
                          padding: EdgeInsets.only(top: 30),
                          child: Text('A'));
                    })),
          ],
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
      return Center(
          child: Icon(
        Icons.search,
        size: 108,
        color: Colors.grey,
      ));
    } else {
      return SearchPane(
        searchStr: searchStr,
        currentPage: currentPage,
      );
    }
  }
}
