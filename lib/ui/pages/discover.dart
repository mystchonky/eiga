import 'file:///D:/libDev/flutter/eiga/lib/ui/widgets/discover/custom_lists.dart';
import 'file:///D:/libDev/flutter/eiga/lib/ui/widgets/discover/trending_carousel.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TrendingCarousel(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                header("Popular Past Season"),
                PopularThisSeason(),
                Divider(),
                header("Upcoming Next Season"),
                UpcomingNextSeason(),
                Divider(),
                header("All Time Popular"),
                AllTimePopular(),
                Divider(),
                header("Top Ten Anime"),
                TopTen()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget header(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: "Rubik",
          color: Colors.white,
        ),
      ),
    );
  }
}
