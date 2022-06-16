import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/profile/radar.dart';
import 'package:eiga/ui/widgets/profile/score_chart.dart';
import 'package:eiga/ui/widgets/profile/stats_card.dart';
import 'package:flutter/material.dart';

class AnimeStats extends StatelessWidget {
  final UserInfo$Query$User user;

  const AnimeStats({required this.user});

  @override
  Widget build(BuildContext context) {
    final List<ChartDataEntry> scoreData = [];
    final List<RadarDataEntry> genreData = [];
    final List<RadarDataEntry> tagData = [];

    if (user.statistics?.anime?.scores != null) {
      for (final e in user.statistics!.anime!.scores!) {
        scoreData.add(ChartDataEntry(score: e!.score ?? 0, count: e.count));
      }
    }
    if (user.statistics?.anime?.genres != null) {
      for (final e in user.statistics!.anime!.genres!) {
        genreData.add(RadarDataEntry(name: e!.genre ?? "", value: e.count));
      }
    }
    if (user.statistics?.anime?.tags != null) {
      for (final e in user.statistics!.anime!.tags!) {
        tagData.add(RadarDataEntry(name: e!.tag!.name, value: e.count));
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MediaStatCard(
                title: "Anime Watched",
                value: (user.statistics?.anime?.count ?? 0).toString(),
                icon: Icons.tv,
              ),
              MediaStatCard(
                title: "Episodes Watched",
                value:
                    (user.statistics?.anime?.episodesWatched ?? 0).toString(),
                icon: Icons.play_arrow_rounded,
              ),
              MediaStatCard(
                title: "Days Watched",
                value: ((user.statistics?.anime?.minutesWatched ?? 0) / 1440)
                    .toStringAsFixed(2),
                icon: Icons.event,
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Score Distribution",
            style: Theme.of(context).textTheme.headline5,
          ),
          if (scoreData.isNotEmpty) ScoreChart(data: scoreData),
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
      ),
    );
  }
}
