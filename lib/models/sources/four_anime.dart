import 'package:flutter/material.dart';

import '../../ui/widgets/watch/anime_list_view.dart';
import '../../ui/widgets/watch/episode_list_view.dart';

enum currentView { animeList, episodeList }

class FourAnime extends StatefulWidget {
  final String search;

  const FourAnime({required this.search});

  @override
  _FourAnimeState createState() => _FourAnimeState();
}

class _FourAnimeState extends State<FourAnime> {
  currentView view = currentView.animeList;
  String animeLink = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: getView()),
    );
  }

  Widget getView() {
    switch (view) {
      case currentView.animeList:
        return AnimeListView(
          search: widget.search,
          onAnimeSelected: (link) {
            setState(() {
              view = currentView.episodeList;
              animeLink = link;
            });
          },
        );
      case currentView.episodeList:
        return EpisodeListView(
          animeLink: animeLink,
        );
    }
  }
}
