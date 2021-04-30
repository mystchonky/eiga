import 'package:flutter/material.dart';

import '../../../graphql/graphql_api.dart';
import '../../../models/helpers/custom_query_helper.dart';
import 'media_list.dart';

class PopularThisSeasonAnime extends StatelessWidget {
  final queryVariables = {
    'season': CustomQueryHelper.currentSeason(),
    'seasonYear': CustomQueryHelper.currentYear()
  };

  @override
  Widget build(BuildContext context) {
    return MediaList(
            mediaQuery: PopularCustomQuery(variables: PopularCustomArguments())
                .document,
            queryVariables: queryVariables)
        .generateWithVariables(context);
  }
}

class UpcomingNextSeasonAnime extends StatelessWidget {
  final queryVariables = {
    'season': CustomQueryHelper.upcomingSeason(),
    'seasonYear': CustomQueryHelper.upcomingYear()
  };

  @override
  Widget build(BuildContext context) {
    return MediaList(
            mediaQuery: PopularCustomQuery(variables: PopularCustomArguments())
                .document,
            queryVariables: queryVariables)
        .generateWithVariables(context);
  }
}

class AllTimePopularAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: AllTimePopularAnimeQuery().document)
        .generate(context);
  }
}

class TopTenAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: TopTenAnimeQuery().document).generate(context);
  }
}

class AllTimePopularManga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: AllTimePopularMangaQuery().document)
        .generate(context);
  }
}

class AllTimePopularManhwa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: AllTimePopularManhwaQuery().document)
        .generate(context);
  }
}

class TopTenManga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return MediaList(mediaQuery: TopTenMangaQuery().document).generate(context);
  }
}
