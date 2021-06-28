import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../classes/e_oauth2_client.dart';
import '../../graphql/graphql_api.dart';
import '../widgets/profile/anime_stats.dart';
import '../widgets/profile/manga_stats.dart';

class Profile extends StatefulWidget {
  final EigaOAuth2Client client;
  final bool animeMode;

  const Profile({required this.client, required this.animeMode});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
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
                              colors: const [
                                Colors.blue,
                                Colors.purple,
                              ],
                            ),
                          ),
                        ),
                ),
                actions: [
                  IconButton(
                      onPressed: () => logout(),
                      icon: Icon(Icons.ac_unit_outlined)),
                ],
              ),
            ],
            //TODO API CHANGE
            body: RefreshIndicator(
              onRefresh: () => refetch!(),
              child: widget.animeMode
                  ? AnimeStats(user: user)
                  : MangaStats(user: user),
            ),
          );
        });
  }

  void logout() {
    widget.client.deleteToken();
    Future.delayed(
        Duration.zero, () => Navigator.popAndPushNamed(context, '_app'));
  }

  @override
  bool get wantKeepAlive => true;
}
