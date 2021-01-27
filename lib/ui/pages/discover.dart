import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 20,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Popular", style: TextStyle(fontSize: 16),),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    addAutomaticKeepAlives: true,
                    itemBuilder: (context, index) {
                      return PopularCard(index: index);
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PopularCard extends StatefulWidget {
  final index;
  PopularCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _PopularCardState createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: 100,
      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      child: Center(child: Text(widget.index.toString())),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
