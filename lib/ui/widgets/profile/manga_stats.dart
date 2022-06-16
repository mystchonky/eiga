import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/profile/radar.dart';
import 'package:eiga/ui/widgets/profile/score_chart.dart';
import 'package:eiga/ui/widgets/profile/stats_card.dart';
import 'package:flutter/material.dart';

class MangaStats extends StatelessWidget {
  final UserInfo$Query$User user;

  const MangaStats({required this.user});

  @override
  Widget build(BuildContext context) {
    final List<ChartDataEntry> scoreData = [];
    final List<RadarDataEntry> genreData = [];
    final List<RadarDataEntry> tagData = [];

    if (user.statistics?.manga?.scores != null) {
      for (final e in user.statistics!.manga!.scores!) {
        scoreData.add(ChartDataEntry(score: e!.score ?? 0, count: e.count));
      }
    }
    if (user.statistics?.manga?.genres != null) {
      for (final e in user.statistics!.manga!.genres!) {
        genreData.add(RadarDataEntry(name: e!.genre ?? "", value: e.count));
      }
    }
    if (user.statistics?.manga?.tags != null) {
      for (final e in user.statistics!.manga!.tags!) {
        tagData.add(RadarDataEntry(name: e!.tag!.name, value: e.count));
      }
    }

    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MediaStatCard(
              title: "Manga Read",
              value: (user.statistics?.manga?.count ?? 0).toString(),
              icon: Icons.book,
            ),
            MediaStatCard(
              title: "Chapters Read",
              value: (user.statistics?.manga?.chaptersRead ?? 0).toString(),
              icon: Icons.turned_in,
            ),
            MediaStatCard(
              title: "Volumes Read",
              value: (user.statistics?.manga?.volumesRead ?? 0).toString(),
              icon: Icons.import_contacts,
            )
          ],
        ),
        if (scoreData.isNotEmpty) ScoreChart(data: scoreData),
        if (genreData.isNotEmpty || tagData.isNotEmpty)
          Container(
            constraints: BoxConstraints(maxHeight: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (genreData.isNotEmpty)
                  Expanded(
                    child: ProfileRadar(data: genreData, key: UniqueKey()),
                  ),
                if (tagData.isNotEmpty)
                  Expanded(child: ProfileRadar(data: tagData, key: UniqueKey()))
              ],
            ),
          )
      ],
    );
  }
}
