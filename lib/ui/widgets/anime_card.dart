import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/anime_card_entry.dart';
import '../views/anime_info_view.dart';

class AnimeCard extends StatefulWidget {
  final AnimeCardEntry? anime;

  const AnimeCard({
    Key? key,
    this.anime,
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
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimeInfo(id: widget.anime!.id)));
        },
        child: Container(
          width: 120,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: CachedNetworkImage(
                  width: double.infinity,
                  height: double.infinity,
                  imageUrl: widget.anime!.coverUrl,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
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
                  widget.anime!.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (widget.anime!.relation != null)
                Container(
                  color: Colors.black,
                  child: Text(
                    widget.anime!.relation!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
