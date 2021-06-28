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

class _EigaScaffoldState extends State<EigaScaffold>
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
          theme: ThemeData(fontFamily: "Inter"),
          darkTheme: EigaTheme(animeMode: isModeAnime).darkTheme,
          themeMode: ThemeMode.dark,
          home: AnnotatedRegion(
            value: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.black),
            child: Scaffold(
              floatingActionButton: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final scaleTween = TweenSequence([
                    TweenSequenceItem(
                        tween: Tween(begin: 1.0, end: 1.2), weight: 1),
                    TweenSequenceItem(
                        tween: Tween(begin: 1.2, end: 1.0), weight: 1),
                  ]);
                  return ScaleTransition(
                    scale: scaleTween.animate(animation),
                    child: child,
                  );
                },
                child: isModeAnime
                    ? FloatingActionButton(
                        key: UniqueKey(),
                        onPressed: () => modeChanged(animeMode: false),
                        child: Icon(Icons.movie_creation_outlined),
                      )
                    : FloatingActionButton(
                        key: UniqueKey(),
                        onPressed: () => modeChanged(),
                        child: Icon(Icons.book_outlined)),
              ),
              body: Stack(children: [
                PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageViewController,
                  children: [
                    Profile(
                      client: widget.oauth2Client,
                      animeMode: isModeAnime,
                    ),
                    LibraryPage(),
                    DiscoverPage(
                      animeMode: isModeAnime,
                    )
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
                                    color: Theme.of(context).accentColor,
                                  )),
                            )),
                  ),
                ),
              ]),
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: BottomNavigationBar(
                items: const [
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
                //elevation: 0,
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

  Future<void> modeChanged({bool animeMode = true}) async {
    scaleController.forward();
    setState(() => splashVisible = true);
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() => isModeAnime = animeMode);
        scaleController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          splashVisible = false;
        });
      }
    });
  }
}
