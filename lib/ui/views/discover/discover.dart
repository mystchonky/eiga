import 'package:eiga/ui/widgets/discover/trending_carousel_manga.dart';
import 'package:flutter/material.dart';

import '../../widgets/discover/custom_lists.dart';
import '../../widgets/discover/trending_carousel_anime.dart';
import 'search_page.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool animeMode = true;

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
                    icon: animeMode
                        ? Icon(Icons.book)
                        : Icon(Icons.play_circle_fill),
                    iconSize: 20,
                    onPressed: () => setState(() {
                          animeMode = !animeMode;
                        })),
                IconButton(
                    icon: Icon(Icons.search),
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
        SliverToBoxAdapter(
            child:
                animeMode ? TrendingAnimeCarousel() : TrendingMangaCarousel()),
        SliverToBoxAdapter(
          child: animeMode ? _animeLists() : _mangaLists(),
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

  Widget _animeLists() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          header("Popular This Season"),
          PopularThisSeasonAnime(),
          Divider(),
          header("Upcoming Next Season"),
          UpcomingNextSeasonAnime(),
          Divider(),
          header("All Time Popular"),
          AllTimePopularAnime(),
          Divider(),
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
          Divider(),
          header("Popular Manga"),
          AllTimePopularManga(),
          header("Popular Manhwa"),
          Divider(),
          AllTimePopularManhwa(),
          Divider(),
          header("Top Ten Manga"),
          TopTenManga()
        ],
      ),
    );
  }
}
