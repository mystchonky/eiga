import 'package:eiga/classes/media_card_entry.dart';
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/media_card.dart';
import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MediaList {
  final DocumentNode? mediaQuery;
  final Map<String, dynamic>? queryVariables;
  EdgeInsetsGeometry get _padding => const EdgeInsets.only(bottom: 5.0);

  const MediaList({
    this.mediaQuery,
    this.queryVariables,
  });

  Widget generate(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Container(
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
              _generateDefault(result),
        ),
      ),
    );
  }

  Widget generateWithVariables(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Container(
        height: 180,
        child: Query(
          options:
              QueryOptions(document: mediaQuery!, variables: queryVariables!),
          builder: (
            QueryResult result, {
            Future<QueryResult?> Function()? refetch,
            FetchMore? fetchMore,
          }) =>
              _generateDefault(result),
        ),
      ),
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
              id: data?[index]?.id ?? 00,
              name: data?[index]?.title?.userPreferred.toString() ?? "N/A",
              coverUrl: data?[index]?.coverImage?.large ?? "N/A",
            ),
          ),
        );
      },
    );
  }
}
