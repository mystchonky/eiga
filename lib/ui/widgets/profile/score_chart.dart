import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartDataEntry {
  final int score;
  final int count;
  ChartDataEntry({required this.score, required this.count});
}

class ScoreChart extends StatelessWidget {
  final List<ChartDataEntry> data;

  const ScoreChart({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<ChartDataEntry> sortedData = data;
    sortedData.sort((a, b) => a.score.compareTo(b.score));
    return Container(
      //padding: EdgeInsets.all(20),
      height: 300,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceEvenly,
          maxY: getMaxY(),
          barGroups: sortedData
              .map(
                (e) => BarChartGroupData(
                  x: e.score,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: e.count.toDouble(),
                      width: 15,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                  showingTooltipIndicators: [0],
                ),
              )
              .toList(),
          barTouchData: BarTouchData(
            enabled: false,
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.transparent,
              tooltipPadding: EdgeInsets.zero,
              tooltipMargin: 4,
              getTooltipItem: (
                BarChartGroupData group,
                int groupIndex,
                BarChartRodData rod,
                int rodIndex,
              ) {
                return BarTooltipItem(
                  rod.toY.round().toString(),
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
          borderData: FlBorderData(show: false),
          // titlesData: FlTitlesData(
          //   leftTitles: AxisTitles(
          //     sideTitles: SideTitles(
          //     showTitles: true,
          //     interval: 4,
          //     getTitlesWidget: (context, value) {
          //       return Sidde

          //       TextStyle(
          //         color: Colors.grey,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 12,
          //       );
          //     },
          //   ),
          //   )

          // bottomTitles: SideTitles(
          //   showTitles: true,
          //   getTextStyles: (context, value) {
          //     return TextStyle(
          //       color: Colors.grey,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 12,
          //     );
          //   },
          //   getTitles: (value) => value.toInt().toString(),
          // ),
          // ),
        ),
      ),
    );
  }

  double getMaxY() {
    int max = 0;
    for (final element in data) {
      if (element.count > max) max = element.count;
    }
    return max + 4;
  }

  double getMinY() {
    int min = 9999999;
    for (final element in data) {
      if (element.count < min) min = element.count;
    }
    return min - 5;
  }
}
