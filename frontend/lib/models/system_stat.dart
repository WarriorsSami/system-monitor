import 'package:freezed_annotation/freezed_annotation.dart';

import 'cpu_stat.dart';
import 'disk_stat.dart';
import 'host_stat.dart';
import 'memory_stat.dart';
import 'net_connection_stat.dart';
import 'partition_stat.dart';
import 'process_stat.dart';
import 'user_stat.dart';

part 'system_stat.freezed.dart';
part 'system_stat.g.dart';

@freezed
class SystemStat with _$SystemStat {
  const factory SystemStat({
    @JsonKey(name: 'host_stat') required HostStat hostStat,
    @JsonKey(name: 'users_stat') required List<UserStat> usersStat,
    @JsonKey(name: 'memory_stat') required MemoryStat memoryStat,
    @JsonKey(name: 'cpu_stat') required CpuStat cpuStat,
    @JsonKey(name: 'disk_stat') required DiskStat diskStat,
    @JsonKey(name: 'partitions_stat')
    required List<PartitionStat> partitionsStat,
    @JsonKey(name: 'net_connections_stat')
    required List<NetConnectionStat> netConnectionsStat,
    @JsonKey(name: 'processes_stat') required List<ProcessStat> processesStat,
  }) = _SystemStat;

  factory SystemStat.fromJson(Map<String, dynamic> json) =>
      _$SystemStatFromJson(json);
}
