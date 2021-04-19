import 'package:flutter/material.dart';

import '../../../graphql/graphql_api.dart';
import 'radar.dart';
import 'score_chart.dart';
import 'stats_card.dart';

class AnimeStats extends StatelessWidget {
  final UserInfo$Query$User user;

  const AnimeStats({required this.user});

  @override
  Widget build(BuildContext context) {
    final List<ChartDataEntry> scoreData = [];
    final List<RadarDataEntry> genreData = [];
    final List<RadarDataEntry> tagData = [];

    for (final e in user.statistics!.anime!.scores!) {
      scoreData.add(ChartDataEntry(score: e?.score ?? 0, count: e?.count ?? 0));
    }
    if (scoreData.isEmpty) {
      scoreData.add(ChartDataEntry(score: 0, count: 0));
    }
    for (final e in user.statistics!.anime!.genres!) {
      genreData.add(RadarDataEntry(name: e!.genre ?? "", value: e.count));
    }
    for (final e in user.statistics!.anime!.tags!) {
      tagData.add(RadarDataEntry(name: e!.tag!.name, value: e.count));
    }

    return Container(
      constraints: BoxConstraints(minHeight: 300),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MediaStatCard(
                  title: "Anime Watched",
                  value: (user.statistics?.anime?.count ?? 0).toString(),
                  icon: Icons.tv),
              MediaStatCard(
                  title: "Episodes Watched",
                  value:
                      (user.statistics?.anime?.episodesWatched ?? 0).toString(),
                  icon: Icons.play_arrow_rounded),
              MediaStatCard(
                  title: "Days Watched",
                  value: ((user.statistics?.anime?.minutesWatched ?? 0) / 1440)
                      .toStringAsFixed(2),
                  icon: Icons.event)
            ],
          ),
          ScoreChart(data: scoreData),
          Container(
            constraints: BoxConstraints(maxHeight: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (genreData.isNotEmpty)
                  Expanded(child: ProfileRadar(data: genreData)),
                if (tagData.isNotEmpty)
                  Expanded(child: ProfileRadar(data: tagData))
              ],
            ),
          )
        ],
      ),
    );
  }

  double getMinY() {
    final x = user.statistics!.anime!.scores!;
    int min = 9999999;
    for (final element in x) {
      if (element!.count < min) min = element.count;
    }
    return min - 5;
  }

  double getMaxY() {
    final x = user.statistics!.anime!.scores!;
    int max = 0;
    for (final element in x) {
      if (element!.count > max) max = element.count;
    }
    return max + 5;
  }
}
