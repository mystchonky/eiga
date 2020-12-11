import 'package:flutter/material.dart';
//import 'package:graphql_flutter/graphql_flutter.dart';
//import 'package:eiga_alpha/graphql/graphql_api.dart';

class AnimeInfo extends StatelessWidget {
  final int id;

  AnimeInfo({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          id.toString(),
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(child: Column(children: [Text(id.toString())])),
    );
  }
}