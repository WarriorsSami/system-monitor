import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_stat.freezed.dart';
part 'host_stat.g.dart';

@freezed
class HostStat with _$HostStat {
  const factory HostStat({
    required String hostname,
    required String os,
    required String platform,
    required int procs,
    required int uptime,
  }) = _HostStat;

  factory HostStat.fromJson(Map<String, dynamic> json) =>
      _$HostStatFromJson(json);
}
