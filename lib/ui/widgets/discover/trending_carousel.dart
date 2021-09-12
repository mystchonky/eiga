import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../classes/media_carousel_entry.dart';
import '../../../graphql/graphql_api.dart';
import 'carousel_card.dart';

class TrendingCarousel extends StatelessWidget {
  final bool animeMode;
  late final DocumentNode queryDocument;

  TrendingCarousel({required this.animeMode}) {
    queryDocument = animeMode
        ? TRENDING_ANIME_QUERY_DOCUMENT
        : TRENDING_MANGA_QUERY_DOCUMENT;
  }

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: queryDocument,
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
          itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
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
            autoPlayInterval: Duration(seconds: 10),
          ),
        );
      },
    );
  }
}
