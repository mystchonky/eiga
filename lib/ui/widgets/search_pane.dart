// ignore_for_file: avoid_dynamic_calls
//TODO
import 'package:eiga/graphql/graphql_api.dart';
import 'package:eiga/ui/views/media_info_view.dart';
import 'package:eiga/ui/widgets/search_card.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class SearchPane extends StatefulWidget {
  final String? searchStr;
  final int? currentPage;

  const SearchPane({
    this.searchStr,
    this.currentPage,
  });

  @override
  _SearchPaneState createState() => _SearchPaneState();
}

class _SearchPaneState extends State<SearchPane> {
  final ScrollController _scrollController = ScrollController();
  bool updating = false;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: SearchDataQuery(variables: SearchDataArguments()).document,
        variables: {'search': widget.searchStr, 'page': 1, 'perPage': 5},
      ),
      builder: (
        QueryResult result, {
        Future<QueryResult?> Function()? refetch,
        FetchMore? fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.data == null && result.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final pageInfo =
            SearchData$Query.fromJson(result.data!).page!.pageInfo!;
        final data = SearchData$Query.fromJson(result.data!).page!.media!;
        final nextPage = pageInfo.currentPage! + 1;

        final FetchMoreOptions opts = FetchMoreOptions(
          variables: {'page': nextPage},
          updateQuery: (previousResultData, fetchMoreResultData) {
            final oldData = previousResultData!['Page']['media'];
            final newData = fetchMoreResultData!['Page']['media'];

            final List<dynamic> combined = [
              ...oldData as List<dynamic>,
              ...newData as List<dynamic>
            ];

            fetchMoreResultData['Page']['media'] = combined;
            updating = false;

            return fetchMoreResultData;
          },
        );

        if (data.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.search_off_rounded,
                  size: 108,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                Text("No results found")
              ],
            ),
          );
        }

        return Column(
          children: [
            Expanded(
              child: NotificationListener(
                onNotification: (dynamic sn) {
                  if (sn is ScrollEndNotification &&
                      _scrollController.offset > 0.8 &&
                      (pageInfo.hasNextPage!) &&
                      !updating) {
                    fetchMore!(opts);
                    updating = true;
                    return true;
                  }
                  return false;
                },
                child: ListView.separated(
                  controller: _scrollController,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MediaInfo(id: data[index]!.id),
                          ),
                        );
                      },
                      child: SearchCard(
                        data: data[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
