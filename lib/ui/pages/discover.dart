import 'package:eiga/ui/widgets/popular_list.dart';
import 'package:eiga/ui/widgets/trending_list.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Popular",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              PopularList()
            ],
          ),
        ),
        Card(
          elevation: 2,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Trending",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TrendingList()
            ],
          ),
        ),
      ],
    );
  }
}
