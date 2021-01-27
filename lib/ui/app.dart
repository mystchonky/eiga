import 'package:eiga/models/oauth2Client.dart';
import 'package:eiga/ui/pages/discover.dart';
import 'package:flutter/material.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'widgets/appbars/discover.dart';

class App extends StatefulWidget {
  EigaOAuth2Client oauth2_client = EigaOAuth2Client();
  OAuth2Helper oauth2Helper;

  final HttpLink httpLink = HttpLink(
    uri: 'https://graphql.anilist.co/',
  );

  ValueNotifier<GraphQLClient> client;

  init() async {
    oauth2Helper = OAuth2Helper(
      oauth2_client,
      clientId: '4721',
      grantType: OAuth2Helper.IMPLICIT_GRANT,
    );

    final AuthLink authLink = AuthLink(
      getToken: () async =>
          'Bearer ' + (await oauth2Helper.getToken()).accessToken,
    );

    final Link link = authLink.concat(httpLink);

    client = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: link,
      ),
    );
  }

  App() {
    init();
  }

  @override
  _AppState createState() => _AppState();
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
                  Center(child: Text("Profile")),
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
