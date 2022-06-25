import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eiga/classes/oauth2_client.dart';
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/profile/anime_stats.dart';
import 'package:eiga/ui/widgets/profile/manga_stats.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Profile extends StatefulWidget {
  final CustomOAuth2Client client;
  final bool animeMode;

  const Profile({required this.client, required this.animeMode});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(_controller);
    super.initState();

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Query(
      options: QueryOptions(
        document: UserInfoQuery().document,
        // fetchPolicy: FetchPolicy.networkOnly,
      ),
      builder: (
        QueryResult result, {
        Future<QueryResult?> Function()? refetch,
        FetchMore? fetchMore,
      }) {
        if (result.hasException) {
          return Center(child: Text(result.exception.toString()));
        }

        if (result.data == null && result.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final UserInfo$Query$User user =
            UserInfo$Query.fromJson(result.data!).viewer!;

        return NestedScrollView(
          headerSliverBuilder: (context, value) => [
            SliverAppBar(
              floating: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 10),
                title: Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(user.name),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(right: 5, bottom: 5),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: CachedNetworkImage(
                          imageUrl: user.avatar!.medium!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                background: user.bannerImage != null
                    ? CachedNetworkImage(
                        imageUrl: user.bannerImage!,
                        fit: BoxFit.cover,
                      )
                    : Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: AnimatedBuilder(
                              animation: animation,
                              builder: (context, _) => CustomPaint(
                                size: Size(double.infinity, 100),
                                painter: CurvePainter(
                                  animation.value,
                                  Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withAlpha(100),
                                  offset: 0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: AnimatedBuilder(
                              animation: animation,
                              builder: (context, _) => CustomPaint(
                                size: Size(double.infinity, 100),
                                painter: CurvePainter(
                                  animation.value,
                                  Colors.white.withAlpha(100),
                                  offset: 0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: AnimatedBuilder(
                              animation: animation,
                              builder: (context, _) => CustomPaint(
                                size: Size(double.infinity, 100),
                                painter: CurvePainter(
                                  animation.value,
                                  Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withAlpha(100),
                                  offset: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              actions: [
                IconButton(
                  onPressed: () => logout(),
                  icon: Icon(Icons.ac_unit_outlined),
                ),
              ],
            ),
          ],
          body: RefreshIndicator(
            onRefresh: () => refetch!(),
            child: widget.animeMode
                ? AnimeStats(user: user)
                : MangaStats(user: user),
          ),
        );
      },
    );
  }

  void logout() {
    widget.client.deleteToken();
    Future.delayed(
      Duration.zero,
      () => Navigator.popAndPushNamed(context, '_app'),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CurvePainter extends CustomPainter {
  final double value;
  final Color color;
  final double offset;
  final double minHeight;

  CurvePainter(
    this.value,
    this.color, {
    required this.offset,
    this.minHeight = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    final y1 = sin(value + offset);
    final y2 = sin(value + pi / 2 + offset);
    final y3 = sin(value + pi + offset);

    final startPointY = size.height * (0.5 + 0.4 * y1) + minHeight;
    final controlPointY = size.height * (0.5 + 0.4 * y2) + minHeight;
    final endPointY = size.height * (0.5 + 0.4 * y3) + minHeight;

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
      size.width * 0.5,
      controlPointY,
      size.width,
      endPointY,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CurvePainter oldDelegate) {
    return true;
  }
}
