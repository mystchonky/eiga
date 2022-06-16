import 'package:eiga/classes/adapters/library_item.dart';
import 'package:eiga/classes/media_card_entry.dart';
import 'package:eiga/ui/widgets/media_card.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library"),
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<LibraryItem>('library').listenable(),
        builder: (context, Box<LibraryItem> box, _) {
          if (box.values.isNotEmpty) {
            return GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 120 / 160,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: List.generate(box.length, (index) {
                final item = box.getAt(index)!;
                return MediaCard(
                  anime: MediaCardEntry(
                    id: item.id,
                    name: item.name,
                    coverUrl: item.coverUrl,
                  ),
                );
              }),
            );
          } else {
            return Center(
              child: Text(" Library Empty"),
            );
          }
        },
      ),
    );
  }
}
