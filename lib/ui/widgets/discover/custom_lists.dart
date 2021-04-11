import 'package:flutter/material.dart';

import '../../../graphql/graphql_api.dart';
import '../../../models/helpers/custom_query_helper.dart';
import 'media_list.dart';

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
