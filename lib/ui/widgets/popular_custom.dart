import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/models/helpers/custom_query.dart';
import 'package:eiga/ui/widgets/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PopularListCustom extends StatelessWidget {
  const PopularListCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 180,
      child: Query(
          options:
              QueryOptions(document: PopularCustomQuery().document, variables: {
            'season': PopularCustom.upcomingSeason(),
            'seasonYear': PopularCustom.upcomingYear()
          }),
          builder: (
            QueryResult result, {
            Future<QueryResult> Function() refetch,
            FetchMore fetchMore,
          }) {
            if (result.hasException) {
              return Center(child: Text(result.exception.toString()));
            }

            if (result.data == null && result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            final data = Popular$Query.fromJson(result.data).page.media;

            return ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AnimeCard(media: data[index]);
                });
          }),
    );
  }
}
