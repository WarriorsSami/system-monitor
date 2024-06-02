import 'package:freezed_annotation/freezed_annotation.dart';

part 'disk_stat.freezed.dart';
part 'disk_stat.g.dart';

@freezed
class DiskStat with _$DiskStat {
  const factory DiskStat({
    required String path,
    required String fstype,
    required double total,
    required double free,
    required double used,
    @JsonKey(name: 'used_percent') required double usedPercent,
  }) = _DiskStat;

  factory DiskStat.fromJson(Map<String, dynamic> json) =>
      _$DiskStatFromJson(json);
}
