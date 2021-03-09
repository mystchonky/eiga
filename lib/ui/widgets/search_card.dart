import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../graphql/graphql_api.dart';

class SearchCard extends StatefulWidget {
  const SearchCard({
    @required this.data,
  });

  final SearchData$Query$Page$Media data;

  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      height: 150,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: widget.data.coverImage.large,
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
                    widget.data.title.romaji ?? "",
                    maxLines: 1,
                    style: TextStyle(fontFamily: "Rubik", fontSize: 20),
                  ),
                  Text(
                    widget.data.title.native ?? "",
                    maxLines: 1,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Score: ${widget.data.averageScore}% | ${widget.data.format} ${widget.data.episodes}"),
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
}
