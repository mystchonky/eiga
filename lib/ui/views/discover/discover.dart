import 'package:flutter/material.dart';

import '../../widgets/discover/custom_lists.dart';
import '../../widgets/discover/trending_carousel.dart';
import 'search_page.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 60.0,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(left: 10),
            title: Row(
              children: [
                Expanded(
                    child: Text(
                  'Discover',
                  style: TextStyle(fontFamily: "Rubik"),
                )),
                IconButton(
                    icon: Icon(Icons.search,
                        color: Theme.of(context).accentColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    }),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: TrendingCarousel()),
        SliverToBoxAdapter(
          child: Padding(
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
        ),
      ],
    );
  }

  Widget header(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontFamily: "Rubik",
          color: Colors.white,
        ),
      ),
    );
  }
}
