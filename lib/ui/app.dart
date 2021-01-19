import 'package:eiga/models/oauth2Client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'main_screen_pages/search_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
      getToken: () async => 'Bearer '+ (await oauth2Helper.getToken()).accessToken,
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
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        _selectedIndex = _pageViewController.page.floor();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: widget.client,
      child: CacheProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.grey[900],
              accentColor: Colors.tealAccent[400]),
          themeMode: ThemeMode.dark,
          home: Scaffold(
            body: SafeArea(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                children: [Text("Home"), SearchPage(), Text("Profile")],
              ),
            ),
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Discover"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: "Profile")
              ],
              currentIndex: _selectedIndex,
              onTap: _onBottomNavTapped,
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
    });
  }
}
