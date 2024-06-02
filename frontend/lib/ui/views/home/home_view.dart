import 'package:flutter/material.dart';
import 'package:frontend/ui/common/ui_helpers.dart';
import 'package:frontend/ui/widgets/stats/cpu_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/disk_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/host_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/memory_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/net_connections_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/partitions_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/processes_stat_widget.dart';
import 'package:frontend/ui/widgets/stats/user_stat_widget.dart';
import 'package:stacked/stacked.dart';

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
                      (systemStat) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  HostStatWidget(
                                    hostStat: systemStat.hostStat,
                                  ),
                                  verticalSpaceMedium,
                                  UserStatWidget(
                                    usersStat: systemStat.usersStat,
                                  ),
                                  verticalSpaceMedium,
                                ],
                              ),
                              horizontalSpaceMedium,
                              NetConnectionsStatWidget(
                                netConnectionsStat:
                                    systemStat.netConnectionsStat,
                              ),
                            ],
                          ),
                          verticalSpaceMedium,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MemoryStatWidget(
                                memoryStat: systemStat.memoryStat,
                              ),
                              horizontalSpaceMedium,
                              DiskStatWidget(
                                diskStat: systemStat.diskStat,
                              ),
                            ],
                          ),
                          verticalSpaceMedium,
                          CpuStatWidget(
                            cpuStat: systemStat.cpuStat,
                          ),
                          verticalSpaceMedium,
                          ProcessesStatWidget(
                            processesStat: systemStat.processesStat,
                          ),
                          verticalSpaceMedium,
                          PartitionsStatWidget(
                            partitionsStat: systemStat.partitionsStat,
                          ),
                          verticalSpaceMedium,
                        ],
                      ),
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
}
