import 'package:eiga/models/oauth2Client.dart';
import 'package:eiga/ui/pages/discover.dart';
import 'package:eiga/ui/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'widgets/appbars/discover.dart';

class App extends StatefulWidget {
  EigaOAuth2Client oauth2_client = EigaOAuth2Client();
  OAuth2Helper oauth2_helper;

  final HttpLink httpLink = HttpLink(
    uri: 'https://graphql.anilist.co/',
  );
  AuthLink authLink;
  Link link;

  ValueNotifier<GraphQLClient> client;
  final memCache = InMemoryCache();

  init() async {
    oauth2_helper = OAuth2Helper(
      oauth2_client,
      clientId: '4721',
      grantType: OAuth2Helper.IMPLICIT_GRANT,
    );

    authLink = AuthLink(
      getToken: () async =>
          'Bearer ' + (await oauth2_helper.getToken()).accessToken,
    );

    link = authLink.concat(httpLink);

    client = ValueNotifier(
      GraphQLClient(
        cache: memCache,
        link: link,
      ),
    );

    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  App() {
    init();
  }

  @override
  _AppState createState() => _AppState();

  void updateClient() {
    authLink = AuthLink(
      getToken: () async =>
          'Bearer ' + (await oauth2_helper.getToken()).accessToken,
    );

    link = authLink.concat(httpLink);
    client.value = GraphQLClient(link: link, cache: memCache);
  }
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final _pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: widget.client,
      child: CacheProvider(
        child: MaterialApp(
          theme: ThemeData(fontFamily: "Inter"),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: loadAppBar(),
            body: SafeArea(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                children: [
                  Column(
                    children: [
                      Center(child: Text("Profile")),
                      Center(child: Profile(
                        logout: () {
                          widget.oauth2_helper.disconnect();
                          widget.updateClient();
                        },
                      ))
                    ],
                  ),
                  Center(child: Text("Library")),
                  DiscoverPage()
                ],
              ),
            ),
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    activeIcon: Icon(Icons.account_circle),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections_bookmark_outlined),
                    activeIcon: Icon(Icons.collections_bookmark),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore_outlined),
                    activeIcon: Icon(Icons.explore),
                    label: "")
              ],
              currentIndex: _selectedIndex,
              onTap: _onBottomNavTapped,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
          ),
        ),
      ),
    );
  }

  void _onBottomNavTapped(int index) {
    setState(() {
      _pageViewController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
      _selectedIndex = index;
      //print(await widget.oauth2Helper.getToken());
    });
  }

  Widget loadAppBar() {
    switch (_selectedIndex) {
      case (2):
        return DiscoverAppBar();
      default:
        return null;
    }
  }
}
