import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../graphql/graphql_api.dart';
import '../../../models/anime_carousel_entry.dart';
import 'carousel_card.dart';

class TrendingCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 120,
      ),
      child: Query(
        options: QueryOptions(
          document: TrendingQuery().document,
        ),
        builder: (
          QueryResult result, {
          Future<QueryResult?> Function()? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.hasException) {
            return Center(child: Text(result.exception.toString()));
          }

          if (result.data == null && result.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          final List<Trending$Query$Page$Media?>? data =
              Trending$Query.fromJson(result.data!).page?.media;

          return CarouselSlider.builder(
              itemCount: data?.length ?? 0,
              itemBuilder:
                  (BuildContext context, int itemIndex, int realIndex) =>
                      AnimeCarouselCard(
                        anime: AnimeCarouselEntry(
                          data?[itemIndex]?.id ?? 0,
                          data?[itemIndex]?.title?.userPreferred ?? "",
                          data?[itemIndex]?.bannerImage ??
                              data?[itemIndex]?.coverImage?.large ??
                              "",
                        ),
                      ),
              options: CarouselOptions(
                viewportFraction: 0.75,
                aspectRatio: 2.5,
                enlargeCenterPage: true,
                autoPlay: true,
              ));
        },
      ),
    );
  }
}
