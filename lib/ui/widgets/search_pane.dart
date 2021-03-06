import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../graphql/graphql_api.dart';
import '../views/anime_info_view.dart';
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
  bool updating = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Query(
        options: QueryOptions(
            document: SearchDataQuery().document,
            variables: {'search': widget.searchStr, 'page': 1, 'perPage': 5}),
        builder: (
          QueryResult result, {
          Future<QueryResult> Function() refetch,
          FetchMore fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.data == null && result.isLoading) {
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
                updating = false;

                return fetchMoreResultData;
              });

          if (data.isEmpty) {
            return Center(child: Text("No result found"));
          }

          return Container(
            child: Column(
              children: [
                Expanded(
                  child: NotificationListener(
                    child: ListView.separated(
                      controller: _scrollController,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: SearchCard(
                            data: data[index],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => AnimeInfo(
                                          id: data[index].id,
                                        )));
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(),
                        );
                      },
                    ),
                    onNotification: (sn) {
                      if (sn is OverscrollNotification &&
                          !result.isLoading &&
                          pageInfo.hasNextPage &&
                          !updating) {
                        fetchMore(opts);
                        updating = true;
                        return true;
                      } else {
                        return false;
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
