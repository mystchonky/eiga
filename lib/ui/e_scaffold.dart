import 'package:eiga/ui/theme.dart';
import 'package:eiga/ui/views/library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../classes/e_graphql_client.dart';
import '../classes/e_oauth2_client.dart';
import 'views/discover.dart';
import 'views/profile.dart';

class EigaScaffold extends StatefulWidget {
  final EigaGraphQLClient gqlClient;
  final EigaOAuth2Client oauth2Client;

  const EigaScaffold({required this.gqlClient, required this.oauth2Client});

  @override
  _EigaScaffoldState createState() => _EigaScaffoldState();
}

class _EigaScaffoldState extends State<EigaScaffold> {
  int _selectedIndex = 0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GraphQLProvider(
      client: widget.gqlClient.client,
      child: CacheProvider(
        child: MaterialApp(
          theme: ThemeData(fontFamily: "Inter"),
          darkTheme: EigaTheme().darkTheme,
          themeMode: ThemeMode.dark,
          home: AnnotatedRegion(
            value: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.black),
            child: Scaffold(
              body: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                children: [
                  Profile(
                    client: widget.oauth2Client,
                  ),
                  LibraryPage(),
                  DiscoverPage()
                ],
              ),
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: "Profile",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.collections_bookmark),
                    label: "Library",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    label: "Discover",
                  )
                ],
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _selectedIndex,
                onTap: _onBottomNavTapped,
                elevation: 0,
              ),
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
}
