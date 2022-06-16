import 'package:eiga/classes/extensions/media_relation.dart';
import 'package:eiga/classes/media_card_entry.dart';
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/media_card.dart';
import 'package:flutter/material.dart';

class RecommendationsBuilder extends StatelessWidget {
  final MediaInfo$Query$Media? media;

  const RecommendationsBuilder({required this.media});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: media?.recommendations?.edges?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final recommendation =
              media?.recommendations?.edges?[index]?.node?.mediaRecommendation;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: MediaCard(
              anime: MediaCardEntry(
                id: recommendation?.id ?? 00,
                name: recommendation?.title?.userPreferred ?? "",
                coverUrl: recommendation?.coverImage?.large ?? "",
              ),
            ),
          );
        },
      ),
    );
  }
}

class RelationsBuilder extends StatelessWidget {
  final MediaInfo$Query$Media? media;

  const RelationsBuilder({required this.media});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: media?.relations?.edges?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final relation = media?.relations?.edges?[index]?.node;
          final relationType =
              media?.relations?.edges?[index]?.relationType?.name;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: MediaCard(
              anime: MediaCardEntry(
                id: relation?.id ?? 00,
                name: relation?.title?.userPreferred ?? "",
                coverUrl: relation?.coverImage?.large ?? "",
                relation: relationType,
              ),
            ),
          );
        },
      ),
    );
  }
}
