import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../graphql/graphql_api.dart';
import '../anime_info_view.dart';
import 'search_card.dart';

class SearchPane extends StatefulWidget {
  final String searchStr;
  final int currentPage;

  SearchPane({
    this.searchStr,
    this.currentPage,
  });

  @override
  _SearchPaneState createState() => _SearchPaneState();
}

class _SearchPaneState extends State<SearchPane> {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
          documentNode: SearchDataQuery().document,
          variables: {'search': widget.searchStr, 'page': 1, 'perPage': 5}),
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

        final pageInfo = SearchData$Query.fromJson(result.data).page.pageInfo;
        final data = SearchData$Query.fromJson(result.data).page.media;
        final nextPage = pageInfo.currentPage + 1;

        FetchMoreOptions opts = FetchMoreOptions(
            variables: {'page': nextPage},
            updateQuery: (previousResultData, fetchMoreResultData) {
              final oldData = previousResultData['Page']['media'];
              final newData = fetchMoreResultData['Page']['media'];

              final List<dynamic> combined = [
                ...oldData as List<dynamic>,
                ...newData as List<dynamic>
              ];

              fetchMoreResultData['Page']['media'] = combined;

              return fetchMoreResultData;
            });

        return Expanded(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  controller: _scrollController,
                  children: <Widget>[
                    for (var d in data)
                      GestureDetector(
                        child: SearchCard(
                          data: d,
                        ),
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => AnimeInfo(id: d.id,)));
                        },
                      ),
                    if (result.loading)
                      Center(
                        child: CircularProgressIndicator(),
                      )
                  ],
                ),
              ),
              FlatButton(
                child: Text("FetchMore"),
                onPressed: () {
                  if (!result.loading && pageInfo.hasNextPage) {
                    fetchMore(opts);
                  }
                },
                color: Colors.amber,
              )
            ],
          ),
        );
      },
    );
  }
}