import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../graphql/graphql_api.dart';
import '../../../models/media_carousel_entry.dart';
import 'carousel_card.dart';

class TrendingAnimeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 130,
      ),
      child: Query(
        options: QueryOptions(
          document: TrendingAnimeQuery().document,
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

          final List<TrendingAnime$Query$Page$Media?>? data =
              TrendingAnime$Query.fromJson(result.data!).page?.media;

          return CarouselSlider.builder(
              itemCount: data?.length ?? 0,
              itemBuilder:
                  (BuildContext context, int itemIndex, int realIndex) =>
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: MediaCarouselCard(
                          anime: MediaCarouselEntry(
                            data?[itemIndex]?.id ?? 0,
                            data?[itemIndex]?.title?.userPreferred ?? "",
                            data?[itemIndex]?.bannerImage ??
                                data?[itemIndex]?.coverImage?.large ??
                                "",
                          ),
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
