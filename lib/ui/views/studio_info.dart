import 'package:eiga/classes/media_card_entry.dart';
import 'package:eiga/ui/widgets/media_card.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/graphql_api.dart';

class StudioInfo extends StatefulWidget {
  final int id;

  const StudioInfo({required this.id});

  @override
  _StudioInfoState createState() => _StudioInfoState();
}

class _StudioInfoState extends State<StudioInfo> {
  bool updating = false;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: StudioInfoQuery(variables: StudioInfoArguments()).document,
        variables: {'id': widget.id, 'page': 1},
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

        final studio = StudioInfo$Query.fromJson(result.data!).studio;
        final media = studio!.media!.nodes!;

        final FetchMoreOptions opts = FetchMoreOptions(
          variables: {'page': studio.media!.pageInfo!.currentPage! + 1},
          updateQuery: (previousResultData, fetchMoreResultData) {
            final oldData = previousResultData!['Studio']['media']['nodes'];
            final newData = fetchMoreResultData!['Studio']['media']['nodes'];

            final List<dynamic> combined = [
              ...oldData as List<dynamic>,
              ...newData as List<dynamic>
            ];

            fetchMoreResultData['Studio']['media']['nodes'] = combined;
            updating = false;

            return fetchMoreResultData;
          },
        );

        return Scaffold(
          appBar: AppBar(
            title: Text(
              studio.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: NotificationListener(
            onNotification: (t) {
              if (t is ScrollEndNotification &&
                  _controller.offset > 0.9 &&
                  studio.media!.pageInfo!.hasNextPage! &&
                  !updating) {
                updating = true;
                fetchMore!(opts);
                return true;
              }
              return false;
            },
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 120 / 160,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              controller: _controller,
              children: List.generate(
                media.length,
                (index) => MediaCard(
                  anime: MediaCardEntry(
                    id: media[index]!.id,
                    name: media[index]!.title!.userPreferred!,
                    coverUrl: media[index]!.coverImage!.large!,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
