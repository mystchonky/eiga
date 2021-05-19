import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class EigaTheme {
  ThemeData get darkTheme => ThemeData(
      fontFamily: "Inter",
      textTheme: TextTheme().apply(bodyColor: Colors.white),
      brightness: Brightness.dark,
      primaryColor: Colors.deepPurpleAccent,
      scaffoldBackgroundColor: Colors.black,
      accentColor: Colors.deepPurpleAccent,
      canvasColor: Colors.black,
      dividerColor: Colors.white38,
      appBarTheme: AppBarTheme(color: Colors.black),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BubbleTabIndicator(
            indicatorHeight: 30,
            indicatorColor: Colors.deepPurpleAccent,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            indicatorRadius: 5),
        labelStyle: TextStyle(fontFamily: "Rubik",fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontFamily: "Rubik", color: Colors.white , fontWeight: FontWeight.bold),
      ));
}
