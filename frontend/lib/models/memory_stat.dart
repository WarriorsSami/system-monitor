import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_stat.freezed.dart';
part 'memory_stat.g.dart';

@freezed
class MemoryStat with _$MemoryStat {
  const factory MemoryStat({
    required double total,
    required double available,
    required double used,
    @JsonKey(name: 'used_percent') required double usedPercent,
    required double free,
  }) = _MemoryStat;

  factory MemoryStat.fromJson(Map<String, dynamic> json) =>
      _$MemoryStatFromJson(json);
}
