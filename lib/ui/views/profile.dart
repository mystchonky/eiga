import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../classes/e_oauth2_client.dart';
import '../../graphql/graphql_api.dart';
import '../widgets/profile/anime_stats.dart';
import '../widgets/profile/manga_stats.dart';

class Profile extends StatefulWidget {
  final EigaOAuth2Client client;

  const Profile({required this.client});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Query(
        options: QueryOptions(
            document: UserInfoQuery().document,
            fetchPolicy: FetchPolicy.cacheFirst),
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

          return RefreshIndicator(
            onRefresh: () => refetch!(),
            child: NestedScrollView(
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
                                border: Border.all(
                                    color: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1!
                                        .color!,
                                    width: 5),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: CachedNetworkImage(
                                imageUrl: user.avatar!.medium!,
                                fit: BoxFit.cover,
                              ),
                            ))
                      ],
                    ),
                    background: user.bannerImage != null
                        ? CachedNetworkImage(
                            imageUrl: user.bannerImage!, fit: BoxFit.cover)
                        : Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.blue,
                                  Colors.purple,
                                ],
                              ),
                            ),
                          ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    getTabBar(
                        controller: _tabController,
                        tabs: [Text("Anime"), Text("Manga")]),
                  ),
                  floating: true,
                )
              ],
              body: TabBarView(
                  controller: _tabController,
                  children: [AnimeStats(user: user), MangaStats(user: user)]),
            ),
          );
        });
  }

  void logout(BuildContext context) {
    widget.client.deleteToken();
    Future.delayed(
        Duration.zero, () => Navigator.popAndPushNamed(context, '_app'));
  }

  @override
  bool get wantKeepAlive => true;

  TabBar getTabBar(
          {required TabController controller, required List<Widget> tabs}) =>
      TabBar(
        controller: controller,
        tabs: tabs,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BubbleTabIndicator(
            indicatorHeight: 30,
            indicatorColor: Colors.deepPurpleAccent,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            indicatorRadius: 5),
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Theme.of(context).canvasColor,
      height: 40,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
