import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';

// ignore: must_be_immutable
class PieCharts extends BaseStatelessWidget {
  PieCharts({Key? key}) : super(key: key);

  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };

  final colorList = <Color>[
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      animationDuration: const Duration(seconds: 3),
      dataMap: dataMap,
      chartType: ChartType.ring,
      colorList: colorList,
      chartValuesOptions: const ChartValuesOptions(showChartValuesInPercentage: false, showChartValues: false),
      legendOptions: const LegendOptions(
        showLegends: false,
      ),
      totalValue: 20,
    );
  }
}
