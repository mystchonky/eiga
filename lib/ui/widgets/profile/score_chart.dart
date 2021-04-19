import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScoreChart extends StatelessWidget {
  final List<ChartDataEntry> data;

  const ScoreChart({required this.data});

  @override
  Widget build(BuildContext context) {
    //return Container();
    return Container(
      padding: EdgeInsets.all(20),
      height: 300,
      child: LineChart(
        LineChartData(
          minY: getMinY(),
          maxY: getMaxY(),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(
              show: true,
              border: Border.all(width: 2, color: Colors.grey.withAlpha(80))),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              margin: 8,
              interval: 10, //FIXME INTERVALS
              getTitles: (value) {
                return value.toInt().toString();
              },
              getTextStyles: (value) =>
                  const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            leftTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              margin: 8,
              interval: 4, // FIXME INTERVALS
              getTitles: (value) {
                return value.toStringAsFixed(0);
              },
              getTextStyles: (value) =>
                  const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: data
                  .map((e) => FlSpot(e.score.toDouble(), e.count.toDouble()))
                  .toList(),
              isCurved: true,
              colors: [Theme.of(context).accentColor],
              dotData: FlDotData(show: false),
              barWidth: 5,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(
                  show: true,
                  colors: [Theme.of(context).accentColor.withAlpha(70)]),
            )
          ],
        ),
      ),
    );
  }

  double getMinY() {
    int min = 9999999;
    for (final element in data) {
      if (element.count < min) min = element.count;
    }
    return min - 5;
  }

  double getMaxY() {
    int max = 0;
    for (final element in data) {
      if (element.count > max) max = element.count;
    }
    return max + 5;
  }
}

class ChartDataEntry {
  final int score;
  final int count;
  ChartDataEntry({required this.score, required this.count});
}
