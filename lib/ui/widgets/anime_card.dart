import 'package:cached_network_image/cached_network_image.dart';
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/views/anime_info_view.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatefulWidget {
  final Popular$Query$Page$Media media;
  AnimeCard({
    Key key,
    this.media,
  }) : super(key: key);

  @override
  _AnimeCardState createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InkWell(
      child: Card(
        child: Container(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 140,
                  child: CachedNetworkImage(
                    imageUrl: widget.media.coverImage.large,
                    placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.media.title.userPreferred,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),

      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>AnimeInfo(id: widget.media.id) ));
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
