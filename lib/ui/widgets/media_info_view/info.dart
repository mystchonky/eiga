import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../classes/extensions/media_format.dart';
import '../../../classes/extensions/media_status.dart';
import '../../../graphql/graphql_api.dart';
import '../../views/studio_info.dart';

class InfoBuilder extends StatelessWidget {
  final MediaInfo$Query$Media? media;

  const InfoBuilder({required this.media});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Table(
        children: media!.type == MediaType.anime
            ? animeInfoBuilder(media, context)
            : mangaInfoBuilder(media),
      ),
    );
  }

  Widget infoTitle(String text) {
    final theme = TextStyle(fontFamily: "Rubik", fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(text, style: theme),
    );
  }

  Widget infoValue(String text) {
    final theme = TextStyle(fontFamily: "Rubik", fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        text,
        style: theme,
        textAlign: TextAlign.end,
      ),
    );
  }

  String cleanDate(MediaInfo$Query$Media$FuzzyDate? dateIn) {
    final date =
        DateTime(dateIn?.year ?? 0, dateIn?.month ?? 0, dateIn?.day ?? 0);
    final DateFormat formatter = DateFormat('dd MMMM, y');
    return formatter.format(date);
  }

  String nextAirDate(int airingAt) {
    final airDate = DateTime.fromMillisecondsSinceEpoch(airingAt * 1000);
    final diff = airDate.difference(DateTime.now());

    final day = diff.abs().inDays;
    final hour = diff.abs().inHours.remainder(24);
    final min = diff.abs().inMinutes.remainder(60);

    return "${day}d ${hour}h ${min}m";
  }

  Widget studioWidget(String text, int id, BuildContext context) {
    final theme = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StudioInfo(id: id))),
        child: Text(
          text,
          style: theme,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  List<TableRow> animeInfoBuilder(
    MediaInfo$Query$Media? anime,
    BuildContext context,
  ) {
    return [
      if (anime?.status == MediaStatus.releasing &&
          anime?.nextAiringEpisode?.airingAt != null)
        TableRow(
          children: [
            infoTitle("Next Episode"),
            infoValue(
              "EP ${anime?.nextAiringEpisode?.episode} : ${nextAirDate(anime!.nextAiringEpisode!.airingAt)} ",
            )
          ],
        ),
      TableRow(
        children: [
          infoTitle("Episodes"),
          infoValue(
            anime?.episodes?.toString() ?? "0",
          ),
        ],
      ),
      TableRow(
        children: [
          infoTitle("Score"),
          infoValue(
            "${(anime?.averageScore ?? 0) / 10}",
          )
        ],
      ),
      TableRow(
        children: [
          infoTitle("Type"),
          infoValue(
            anime?.format?.name ?? "N/A",
          )
        ],
      ),
      TableRow(
        children: [
          infoTitle("Studio"),
          if (anime?.studios?.nodes?[0]?.id != null)
            studioWidget(
              anime?.studios?.nodes?[0]?.name ?? "N/A",
              anime!.studios!.nodes![0]!.id,
              context,
            )
          else
            infoValue(
              anime?.studios?.nodes?[0]?.name ?? "N/A",
            )
        ],
      ),
      TableRow(
        children: [
          infoTitle("Status"),
          infoValue(
            anime?.status?.name ?? "N/A",
          )
        ],
      ),
      TableRow(
        children: [
          infoTitle("Duration"),
          infoValue(
            "${anime?.duration ?? 0} Min",
          )
        ],
      ),
      if (anime?.status == MediaStatus.finished)
        TableRow(
          children: [
            infoTitle("Aired"),
            infoValue(
              anime?.startDate != null ? cleanDate(anime?.startDate) : "N/A",
            )
          ],
        )
    ];
  }

  List<TableRow> mangaInfoBuilder(MediaInfo$Query$Media? media) {
    return [
      TableRow(
        children: [
          infoTitle("Score"),
          infoValue(
            "${(media?.averageScore ?? 0) / 10}",
          )
        ],
      ),
      TableRow(
        children: [
          infoTitle("Status"),
          infoValue(
            media?.status?.name ?? "N/A",
          )
        ],
      ),
      if (media?.status == MediaStatus.finished)
        TableRow(
          children: [
            infoTitle("Chapters"),
            infoValue(
              media?.chapters?.toString() ?? "N/A",
            )
          ],
        ),
      if (media?.status == MediaStatus.finished)
        TableRow(
          children: [
            infoTitle("Volumes"),
            infoValue(
              media?.volumes?.toString() ?? "N/A",
            )
          ],
        ),
      TableRow(
        children: [
          infoTitle("Start Date"),
          infoValue(
            media?.startDate != null ? cleanDate(media?.startDate) : "N/A",
          )
        ],
      ),
      if (media?.status == MediaStatus.finished)
        TableRow(
          children: [
            infoTitle("End Date"),
            infoValue(
              media?.endDate != null ? cleanDate(media?.endDate) : "N/A",
            )
          ],
        ),
    ];
  }
}
