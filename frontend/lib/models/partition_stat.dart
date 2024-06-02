import 'package:freezed_annotation/freezed_annotation.dart';

part 'partition_stat.freezed.dart';
part 'partition_stat.g.dart';

@freezed
class PartitionStat with _$PartitionStat {
  const factory PartitionStat({
    required String device,
    required String mountpoint,
    required String fstype,
    required List<String> opts,
  }) = _PartitionStat;

  factory PartitionStat.fromJson(Map<String, dynamic> json) =>
      _$PartitionStatFromJson(json);
}
