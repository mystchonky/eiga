import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../models/media_carousel_entry.dart';
import '../../views/media_info_view.dart';

class MediaCarouselCard extends StatelessWidget {
  final MediaCarouselEntry anime;

  const MediaCarouselCard({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MediaInfo(id: anime.id)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).accentColor, offset: Offset(4, 4))
              ]),
          clipBehavior: Clip.hardEdge,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: CachedNetworkImage(
                width: double.infinity,
                height: double.infinity,
                imageUrl: anime.bannerImg,
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
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  anime.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ]),
        ));
  }
}
