import 'package:flutter/material.dart';
import 'main_screen_pages/search_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class App extends StatefulWidget {
  final HttpLink httpLink = HttpLink(
    uri: 'https://graphql.anilist.co/',
  );

  ValueNotifier<GraphQLClient> client;

  App() {
    //link = httpLink;
    client = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: httpLink,
      ),
    );
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
          ),
          themeMode: ThemeMode.dark,
          home: Scaffold(
            body: SafeArea(
              child: PageView(
                //index: _selectedIndex,
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
