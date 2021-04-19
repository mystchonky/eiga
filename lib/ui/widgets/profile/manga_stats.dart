import 'package:flutter/material.dart';

import '../../../graphql/graphql_api.dart';
import 'radar.dart';
import 'score_chart.dart';
import 'stats_card.dart';

class MangaStats extends StatelessWidget {
  final UserInfo$Query$User user;

  const MangaStats({required this.user});

  @override
  Widget build(BuildContext context) {
    final List<ChartDataEntry> scoreData = [];
    final List<RadarDataEntry> genreData = [];
    final List<RadarDataEntry> tagData = [];

    for (final e in user.statistics!.manga!.scores!) {
      scoreData.add(ChartDataEntry(score: e?.score ?? 0, count: e?.count ?? 0));
    }
    if (scoreData.isEmpty) {
      scoreData.add(ChartDataEntry(score: 0, count: 0));
    }
    for (final e in user.statistics!.manga!.genres!) {
      genreData.add(RadarDataEntry(name: e!.genre ?? "", value: e.count));
    }
    for (final e in user.statistics!.manga!.tags!) {
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
                  title: "Manga Read",
                  value: (user.statistics?.manga?.count ?? 0).toString(),
                  icon: Icons.book),
              MediaStatCard(
                  title: "Chapters Read",
                  value: (user.statistics?.manga?.chaptersRead ?? 0).toString(),
                  icon: Icons.turned_in),
              MediaStatCard(
                  title: "Volumes Read",
                  value: ((user.statistics?.manga?.volumesRead ?? 0) / 1440)
                      .toStringAsFixed(2),
                  icon: Icons.import_contacts)
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
}
