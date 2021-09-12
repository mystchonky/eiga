import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';

class ProfileRadar extends StatelessWidget {
  final List<RadarDataEntry> data;

  const ProfileRadar({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: RadarChart(
        animate: false,
        labels: data.map((e) => e.name).toList(),
        values: data.map((e) => e.value.toDouble()).toList(),
        maxValue: data.map((e) => e.value.toDouble()).reduce(max),
        fillColor: Theme.of(context).accentColor,
        fillAlpha: 100,
        strokeColor: Colors.white10,
        labelColor: Colors.white,
      ),
    );
  }
}

class RadarDataEntry {
  final String name;
  final int value;
  const RadarDataEntry({required this.name, required this.value});
}
