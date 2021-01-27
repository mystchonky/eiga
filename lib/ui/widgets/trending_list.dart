import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/widgets/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Query(
          options: QueryOptions(
            documentNode: TrendingQuery().document,
          ),
          builder: (
            QueryResult result, {
            Future<QueryResult> Function() refetch,
            FetchMore fetchMore,
          }) {
            if (result.hasException) {
              return Center(child: Text(result.exception.toString()));
            }

            if (result.data == null && result.loading) {
              return Center(child: CircularProgressIndicator());
            }

            final data =
                Popular$Query.fromJson(result.data).page.media;

            return ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                itemBuilder: (context, index) {
                  return AnimeCard(media: data[index]);
                });
          }),
    );
  }
}