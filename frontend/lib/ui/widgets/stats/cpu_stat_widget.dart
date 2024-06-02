import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:frontend/models/cpu_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CpuStatWidget extends StatelessWidget {
  final CpuStat cpuStat;

  const CpuStatWidget({
    required this.cpuStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'CPU Info',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Model: ${cpuStat.modelName}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'Family: ${cpuStat.family}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'Cores: ${cpuStat.cores}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              '${cpuStat.mhz} MHz',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        verticalSpaceSmall,
        SfCartesianChart(
          plotAreaBorderWidth: 0,
          title: const ChartTitle(
            text: 'CPU Cores Usage',
          ),
          primaryXAxis: const CategoryAxis(
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: const NumericAxis(
            axisLine: AxisLine(width: 0),
            labelFormat: '{value}%',
            majorTickLines: MajorTickLines(size: 0),
          ),
          series: <CartesianSeries<({int coreIndex, double coreUsage}),
              String>>[
            ColumnSeries<({int coreIndex, double coreUsage}), String>(
              dataSource: cpuStat.coresUsage
                  .mapIndexed(
                    (index, coreUsage) =>
                        (coreIndex: index, coreUsage: coreUsage),
                  )
                  .toList(),
              xValueMapper: (data, _) => 'C${data.coreIndex}',
              yValueMapper: (data, _) => data.coreUsage,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            )
          ],
        ),
      ],
    );
  }
}
