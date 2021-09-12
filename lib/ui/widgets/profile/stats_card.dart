import 'package:flutter/material.dart';

class MediaStatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const MediaStatCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      padding: EdgeInsets.all(5),
      height: 80,
      width: 120,
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    value,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Text(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                  overflow: TextOverflow.clip,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
