import 'package:flutter/material.dart';

class EigaTheme {
  final bool animeMode;

  const EigaTheme({required this.animeMode});

  ThemeData get darkTheme => ThemeData(
        //fontFamily: "Inter",
        applyElevationOverlayColor: true,
        useMaterial3: true,
        colorSchemeSeed: animeMode ? Color(0x00B25068) : Color(0x00E7AB79),
        // textTheme: TextTheme().apply(bodyColor: Colors.white),
        brightness: Brightness.dark,
        // scaffoldBackgroundColor: Color(0x00121212),
        // canvasColor: Color(0x00121212),
        // primaryColor: animeMode ? Colors.deepPurpleAccent : Colors.orange,
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //   backgroundColor: animeMode ? Colors.deepPurpleAccent : Colors.orange,
        // ),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   selectedItemColor:
        //       animeMode ? Colors.deepPurpleAccent : Colors.orange,
        // ),
        // dividerColor: Colors.white38,
        // appBarTheme: AppBarTheme(color: Colors.transparent),
        splashFactory: InkRipple.splashFactory,
      );
}
