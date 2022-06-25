import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class Cover extends StatelessWidget {
  final String? bannerImage;
  final String coverImage;
  final String nameUserPreferred;
  final String? nameEnglish;
  final String? nameJapanese;
  final String mediaUrl;

  const Cover({
    this.bannerImage,
    required this.coverImage,
    required this.nameUserPreferred,
    this.nameEnglish,
    this.nameJapanese,
    required this.mediaUrl,
  });
  @override
  Widget build(BuildContext context) {
    final canvasColor = Theme.of(context).canvasColor;
    return Container(
      height: 300,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          if (bannerImage != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: bannerImage ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  canvasColor.withAlpha(0),
                  canvasColor.withOpacity(0.26),
                  canvasColor.withOpacity(0.87),
                  canvasColor,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              //color: Colors.purple,
              // height: 200,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: CachedNetworkImage(
                        imageUrl: coverImage,
                        fit: BoxFit.contain,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.only(top: 10, left: 10, bottom: 20),
                      child: Column(
                        //mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameUserPreferred,
                            maxLines: 2,
                            style: TextStyle(fontSize: 18),
                          ),
                          if (nameEnglish != null)
                            Text(
                              nameEnglish!,
                              style: TextStyle(fontSize: 12),
                            ),
                          Text(
                            nameJapanese ?? "N/A",
                            style: TextStyle(fontSize: 12),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.public),
                                padding: EdgeInsets.all(0),
                                iconSize: 20,
                                color: Theme.of(context).colorScheme.secondary,
                                onPressed: () =>
                                    url.launchUrl(Uri(path: mediaUrl)),
                              ),
                              IconButton(
                                icon: Icon(Icons.share),
                                padding: EdgeInsets.all(0),
                                iconSize: 20,
                                color: Theme.of(context).colorScheme.secondary,
                                onPressed: () => Share.share(mediaUrl),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
