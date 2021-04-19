import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProfileRadar extends StatelessWidget {
  final List<RadarDataEntry> data;

  const ProfileRadar({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      constraints: BoxConstraints(maxWidth: 300, maxHeight: 200),
      child: RadarChart(RadarChartData(
        dataSets: [
          RadarDataSet(
            fillColor: Theme.of(context).accentColor.withAlpha(200),
            borderColor: Theme.of(context).accentColor,
            entryRadius: 5,
            borderWidth: 2,
            dataEntries:
                data.map((e) => RadarEntry(value: e.value.toDouble())).toList(),
          )
        ],
        radarBackgroundColor: Colors.transparent,
        borderData: FlBorderData(show: false),
        radarBorderData: BorderSide(color: Colors.grey),
        titlePositionPercentageOffset: 0.15,
        titleTextStyle: TextStyle(
            color: Theme.of(context).textTheme.bodyText1!.color,
            fontSize: 14,
            fontFamily: "Rubik"),
        tickCount: 4,
        getTitle: (value) {
          return data[value].name;
        },
        tickBorderData: BorderSide(color: Colors.grey),
        gridBorderData: BorderSide(color: Colors.grey),
      )),
    );
  }
}

class RadarDataEntry {
  final String name;
  final int value;
  const RadarDataEntry({required this.name, required this.value});
}
