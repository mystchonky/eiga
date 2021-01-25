import 'package:eiga/ui/main_screen_pages/search_page.dart';
import 'package:flutter/material.dart';

class DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("Discover"), actions: [
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          }),
    ]);
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
