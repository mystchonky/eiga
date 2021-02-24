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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        child: Container(
          width: 120,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              CachedNetworkImage(
                width: double.infinity,
                height: double.infinity,
                imageUrl: widget.media.coverImage.large,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.black26,
                      Colors.black87
                    ],
                  ),
                ),
                child: Text(
                  widget.media.title.userPreferred,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimeInfo(id: widget.media.id)));
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
