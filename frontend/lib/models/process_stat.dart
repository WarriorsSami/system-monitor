import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_stat.freezed.dart';
part 'process_stat.g.dart';

@freezed
class ProcessStat with _$ProcessStat {
  const factory ProcessStat({
    required int pid,
    required String name,
    required String status,
    @JsonKey(name: 'cpu_percent') required double cpuPercent,
    @JsonKey(name: 'memory_percent') required double memoryPercent,
  }) = _ProcessStat;

  factory ProcessStat.fromJson(Map<String, dynamic> json) =>
      _$ProcessStatFromJson(json);
}
