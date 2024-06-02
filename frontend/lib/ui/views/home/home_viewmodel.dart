import 'package:dartz/dartz.dart';
import 'package:frontend/app/app.locator.dart';
import 'package:frontend/models/system_stat.dart';
import 'package:frontend/services/monitor_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends StreamViewModel<SystemStat> {
  final _monitorService = locator<MonitorService>();

  Option<SystemStat> get currentSystemStat =>
      data == null ? none() : some(data!);

  @override
  Stream<SystemStat> get stream => _monitorService.dialMonitorStream();
}
