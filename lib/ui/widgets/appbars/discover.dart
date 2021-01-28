import 'dart:ui';

import 'package:eiga/ui/pages/search_page.dart';
import 'package:flutter/material.dart';

class DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Discover",
       // style: TextStyle(color: Colors.black),
      ),
      //backgroundColor: Colors.white,
      //actionsIconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      actions: [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            }),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
