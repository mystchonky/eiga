import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../classes/media_card_entry.dart';
import '../views/media_info_view.dart';

class MediaCard extends StatefulWidget {
  final MediaCardEntry? anime;

  const MediaCard({
    Key? key,
    this.anime,
  }) : super(key: key);

  @override
  _MediaCardState createState() => _MediaCardState();
}

class _MediaCardState extends State<MediaCard>
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
                  builder: (context) => MediaInfo(id: widget.anime!.id)));
        },
        child: Container(
          width: 120,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
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
                      Colors.transparent,
                      Color(0xFF121212).withOpacity(0.45),
                      Color(0xFF121212).withOpacity(0.87),
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
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(left: 2, top: 2),
                  child: Text(
                    widget.anime!.relation!,
                    style: TextStyle(
                        color:
                            Theme.of(context).accentTextTheme.bodyText1!.color,
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
