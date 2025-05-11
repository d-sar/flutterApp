import 'package:flutter/material.dart';
import 'line_chart_widget.dart';
import 'bar_chart_widget.dart';

Widget GraphSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      LineChartWidget(),
      BarChartWidget(),
    ],
  );
}
