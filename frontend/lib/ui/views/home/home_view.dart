import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:frontend/models/cpu_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpaceSmall,
              const Text(
                'System monitor dashboard',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceLarge,
              viewModel.isBusy
                  ? const CircularProgressIndicator()
                  : viewModel.currentSystemStat.fold(
                      () => const Text(
                        'No data',
                        style: TextStyle(fontSize: 18),
                      ),
                      (systemStat) =>
                          buildCpuCoresUsageChart(systemStat.cpuStat),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  Widget buildCpuCoresUsageChart(CpuStat cpuStat) {
    return SizedBox(
      height: 200,
      child: SfCartesianChart(
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
        series: <CartesianSeries<({int coreIndex, double coreUsage}), String>>[
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
    );
  }
}
