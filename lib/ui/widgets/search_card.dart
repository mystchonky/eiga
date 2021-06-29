import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../classes/extensions/media_format.dart';
import '../../classes/extensions/media_season.dart';
import '../../graphql/graphql_api.dart';

class SearchCard extends StatefulWidget {
  const SearchCard({
    required this.data,
  });

  final SearchData$Query$Page$Media? data;

  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final media = widget.data;
    return Container(
      constraints: BoxConstraints(minHeight: 150),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: widget.data?.coverImage?.large ?? "",
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    media?.title?.userPreferred ?? "N/A",
                    maxLines: 2,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text("${media?.season?.name} ${media?.seasonYear}"),
                  if (media!.studios!.nodes!.isNotEmpty)
                    Text(media.studios!.nodes![0]?.name ?? ""),
                  Row(
                    children: [
                      Text("Score: ${(widget.data?.averageScore ?? 0) / 10}"),
                      Text(" \u2B25 "),
                      Text(widget.data?.format?.name ?? ""),
                      if (widget.data?.format == MediaFormat.tv &&
                          widget.data?.episodes != null)
                        Text(" ${widget.data!.episodes} EPS")
                    ],
                  ),
                  genreBuilder(media)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Widget genreBuilder(SearchData$Query$Page$Media? media) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: media?.genres?.map((gen) {
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).accentColor,
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(gen ?? "N/A",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12)));
            }).toList() ??
            [],
      ),
    );
  }
}
