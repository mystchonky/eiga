import 'package:carousel_slider/carousel_slider.dart';
import 'package:eiga/models/anime_carousel_entry.dart';
import 'package:eiga/ui/widgets/carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:eiga/graphql/graphql_api.dart';

class TrendingCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: TrendingQuery().document,
      ),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Center(child: Text(result.exception.toString()));
        }

        if (result.data == null && result.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final List<Trending$Query$Page$Media> data =
            Trending$Query.fromJson(result.data).page.media;

        return CarouselSlider.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
                AnimeCarouselCard(
                  anime: AnimeCarouselEntry(
                    data[itemIndex].id,
                    data[itemIndex].title.userPreferred,
                    data[itemIndex].bannerImage,
                  ),
                ),
            options: CarouselOptions(
              viewportFraction: 0.75,
              aspectRatio: 2.5,
              enlargeCenterPage: true,
              //height: 180,
            ));
      },
    );
  }
}
