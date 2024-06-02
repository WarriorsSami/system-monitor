import 'package:flutter/material.dart';
import 'package:frontend/models/disk_stat.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DiskStatWidget extends StatelessWidget {
  final DiskStat diskStat;

  const DiskStatWidget({
    required this.diskStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(
        text: 'Disk usage for ${diskStat.path} (${diskStat.fstype})',
        textStyle: const TextStyle(
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
              y: diskStat.usedPercent,
              text: diskStat.usedPercent.floorToDouble().toString()
            ),
            (
              x: 'Free (Bytes)',
              y: 100 - diskStat.usedPercent,
              text: (100 - diskStat.usedPercent).ceilToDouble().toString()
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
