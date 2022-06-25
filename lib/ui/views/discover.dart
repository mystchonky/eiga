import 'package:eiga/ui/views/search_page.dart';
import 'package:eiga/ui/widgets/discover/custom_lists.dart';
import 'package:eiga/ui/widgets/discover/trending_carousel.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  final bool animeMode;

  const DiscoverPage({required this.animeMode});

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, value) => [
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
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontFamily: "Rubik",
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          TrendingCarousel(animeMode: widget.animeMode),
          SizedBox(height: 10),
          if (widget.animeMode) _animeLists() else _mangaLists(),
        ],
      ),
    );
  }

  Widget header(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _animeLists() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header("Popular This Season"),
          PopularThisSeasonAnime(),
          SizedBox(height: 20),
          header("Upcoming Next Season"),
          UpcomingNextSeasonAnime(),
          SizedBox(height: 20),
          header("All Time Popular"),
          AllTimePopularAnime(),
          SizedBox(height: 20),
          header("Top Ten Anime"),
          TopTenAnime()
        ],
      ),
    );
  }

  Widget _mangaLists() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header("Popular Manga"),
          AllTimePopularManga(),
          SizedBox(height: 20),
          header("Popular Manhwa"),
          AllTimePopularManhwa(),
          SizedBox(height: 20),
          header("Top Ten Manga"),
          TopTenManga()
        ],
      ),
    );
  }
}
