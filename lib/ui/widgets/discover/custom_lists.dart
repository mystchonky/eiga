import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/models/helpers/custom_query_helper.dart';
import 'file:///D:/libDev/flutter/eiga/lib/ui/widgets/discover/media_list.dart';
import 'package:flutter/material.dart';

class PopularThisSeason extends StatelessWidget {
  final queryVariables = {
    'season': CustomQueryHelper.currentSeason(),
    'seasonYear': CustomQueryHelper.currentYear()
  };

  @override
  Widget build(BuildContext context) {
    return MediaList(
            mediaQuery: PopularCustomQuery().document,
            queryVariables: queryVariables)
        .generateWithVariables(context);
  }
}

class UpcomingNextSeason extends StatelessWidget {
  final queryVariables = {
    'season': CustomQueryHelper.upcomingSeason(),
    'seasonYear': CustomQueryHelper.upcomingYear()
  };

  @override
  Widget build(BuildContext context) {
    return MediaList(
            mediaQuery: PopularCustomQuery().document,
            queryVariables: queryVariables)
        .generateWithVariables(context);
  }
}

class AllTimePopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: AllTimePopularQuery().document)
        .generate(context);
  }
}

class TopTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: TopTenQuery().document).generate(context);
  }
}
