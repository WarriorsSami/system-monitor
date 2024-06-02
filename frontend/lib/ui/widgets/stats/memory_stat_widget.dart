import 'package:flutter/material.dart';
import 'package:frontend/models/memory_stat.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MemoryStatWidget extends StatelessWidget {
  final MemoryStat memoryStat;

  const MemoryStatWidget({
    required this.memoryStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: const ChartTitle(
        text: 'Memory usage',
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      legend: const Legend(
        isVisible: true,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      series: <CircularSeries>[
        DoughnutSeries<({String x, double y, String text}), String>(
          explode: true,
          dataSource: [
            (
              x: 'Used (Bytes)',
              y: memoryStat.usedPercent,
              text: memoryStat.usedPercent.floorToDouble().toString()
            ),
            (
              x: 'Free (Bytes)',
              y: 100 - memoryStat.usedPercent,
              text: (100 - memoryStat.usedPercent).ceilToDouble().toString()
            )
          ],
          xValueMapper: (data, _) => data.x,
          yValueMapper: (data, _) => data.y,
          dataLabelMapper: (data, _) => data.text,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.outside,
            labelIntersectAction: LabelIntersectAction.none,
          ),
        ),
      ],
    );
  }
}
