import 'package:eiga/ui/widgets/popular_custom.dart';
import 'package:eiga/ui/widgets/popular_list.dart';
import 'package:eiga/ui/widgets/trending_list.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Rubik",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: PopularList(),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Rubik",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TrendingList(),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Popular upcoming",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Rubik",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: PopularListCustom(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
