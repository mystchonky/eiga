import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/graphql_api.dart';

class AnimeInfo extends StatelessWidget {
  final int id;

  AnimeInfo({this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          documentNode: AnimeInfoQuery().document, variables: {'id': id}),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.data == null && result.loading) {
          return Center(child: CircularProgressIndicator());
        }

        final animeName = AnimeInfo$Query.fromJson(result.data).media.title.romaji;

        return Scaffold(
          appBar: AppBar(title: Text(animeName),),
        );
      },
    );
  }
}
