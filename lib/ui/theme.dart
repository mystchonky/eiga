import 'package:flutter/material.dart';

class EigaTheme {
  final bool animeMode;

  const EigaTheme({required this.animeMode});

  ThemeData get darkTheme => ThemeData(
        //fontFamily: "Inter",
        applyElevationOverlayColor: true,
        textTheme: TextTheme().apply(bodyColor: Colors.white),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0x00121212),
        primaryColor: animeMode ? Colors.deepPurpleAccent : Colors.orange,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: animeMode ? Colors.deepPurpleAccent : Colors.orange,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:
              animeMode ? Colors.deepPurpleAccent : Colors.orange,
        ),
        canvasColor: Color(0x00121212),
        dividerColor: Colors.white38,
        appBarTheme: AppBarTheme(color: Colors.transparent),
        splashFactory: InkRipple.splashFactory,
      );
}
