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
    return Card(
      child: Container(
        height: 150,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: CachedNetworkImage(
                      imageUrl: widget.data.coverImage.large,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.title.romaji ?? "",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    widget.data.title.english ?? "",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    widget.data.title.native ?? "",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
