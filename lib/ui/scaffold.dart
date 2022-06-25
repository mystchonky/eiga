import 'package:eiga/classes/graphql_client.dart';
import 'package:eiga/classes/oauth2_client.dart';
import 'package:eiga/ui/theme.dart';
import 'package:eiga/ui/views/discover.dart';
import 'package:eiga/ui/views/library.dart';
import 'package:eiga/ui/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CustomScaffold extends StatefulWidget {
  final CustomGraphQLClient gqlClient;
  final CustomOAuth2Client oauth2Client;

  const CustomScaffold({required this.gqlClient, required this.oauth2Client});

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  final _pageViewController = PageController();
  bool isModeAnime = true; //false => mangaMode
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  bool splashVisible = false;

  @override
  void initState() {
    super.initState();
    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnimation =
        Tween<double>(begin: 1.0, end: 80.0).animate(scaleController);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

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
          darkTheme: EigaTheme(animeMode: isModeAnime).darkTheme,
          themeMode: ThemeMode.dark,
          home: AnnotatedRegion(
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: Colors.black,
            ),
            child: Scaffold(
              floatingActionButton: isModeAnime
                  ? FloatingActionButton(
                      onPressed: () => modeChanged(animeMode: false),
                      child: Icon(Icons.movie_creation_outlined),
                    )
                  : FloatingActionButton(
                      onPressed: () => modeChanged(animeMode: true),
                      child: Icon(Icons.book_outlined),
                    ),
              body: Stack(
                children: [
                  PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageViewController,
                    children: [
                      Profile(
                        client: widget.oauth2Client,
                        animeMode: isModeAnime,
                      ),
                      LibraryPage(),
                      DiscoverPage(animeMode: isModeAnime)
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Visibility(
                      visible: splashVisible,
                      child: AnimatedBuilder(
                        animation: scaleAnimation,
                        builder: (context, child) => Transform.scale(
                          scale: scaleAnimation.value,
                          child: Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.white24)),
                ),
                child: NavigationBar(
                  destinations: const [
                    NavigationDestination(
                      icon: Icon(Icons.account_circle),
                      label: "Profile",
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.collections_bookmark),
                      label: "Library",
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.explore),
                      label: "Discover",
                    )
                  ],
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onBottomNavTapped,
                  //elevation: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onBottomNavTapped(int index) {
    setState(() {
      _pageViewController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      );
      _selectedIndex = index;
    });
  }

  Future<void> modeChanged({required bool animeMode}) async {
    scaleController.forward();
    setState(() => splashVisible = true);
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() => isModeAnime = animeMode);
        scaleController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        setState(() => splashVisible = false);
      }
    });
  }
}
