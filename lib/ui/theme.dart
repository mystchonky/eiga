import 'package:flutter/material.dart';

class EigaTheme {
  final bool animeMode;

  const EigaTheme({required this.animeMode});

  ThemeData get darkTheme => ThemeData(
        fontFamily: "Inter",
        textTheme: TextTheme().apply(bodyColor: Colors.white),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        accentColor: animeMode ? Colors.deepPurpleAccent : Colors.orange,
        canvasColor: Colors.black,
        dividerColor: Colors.white38,
        appBarTheme: AppBarTheme(color: Colors.transparent),
        splashFactory: InkRipple.splashFactory,
      );
}
