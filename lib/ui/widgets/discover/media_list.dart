import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../graphql/graphql_api.dart';
import '../../../models/media_card_entry.dart';
import '../media_card.dart';

class MediaList {
  final DocumentNode? mediaQuery;
  final Map<String, dynamic>? queryVariables;

  const MediaList({
    this.mediaQuery,
    this.queryVariables,
  });

  Widget generate(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 180,
      child: Query(
          options: QueryOptions(
            document: mediaQuery!,
          ),
          builder: (
            QueryResult result, {
            Future<QueryResult?> Function()? refetch,
            FetchMore? fetchMore,
          }) =>
              _generateDefault(result)),
    );
  }

  Widget generateWithVariables(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 180,
      child: Query(
          options:
              QueryOptions(document: mediaQuery!, variables: queryVariables!),
          builder: (
            QueryResult result, {
            Future<QueryResult?> Function()? refetch,
            FetchMore? fetchMore,
          }) =>
              _generateDefault(result)),
    );
  }

  Widget _generateDefault(QueryResult result) {
    if (result.hasException) {
      return Center(child: Text(result.exception.toString()));
    }

    if (result.data == null && result.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    final List<AllTimePopularAnime$Query$Page$Media?>? data =
        AllTimePopularAnime$Query.fromJson(result.data!).page?.media;

    return ListView.builder(
        itemCount: data?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: MediaCard(
                anime: MediaCardEntry(
                    data?[index]?.id ?? 00,
                    data?[index]?.title?.userPreferred.toString() ?? "N/A",
                    data?[index]?.coverImage?.large ?? "N/A")),
          );
        });
  }
}
