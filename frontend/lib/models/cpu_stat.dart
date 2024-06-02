import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_stat.freezed.dart';
part 'cpu_stat.g.dart';

@freezed
class CpuStat with _$CpuStat {
  const factory CpuStat({
    @JsonKey(name: 'model_name') required String modelName,
    required String family,
    required int cores,
    required int mhz,
    @JsonKey(name: 'cores_usage') required List<double> coresUsage,
  }) = _CpuStat;

  factory CpuStat.fromJson(Map<String, dynamic> json) =>
      _$CpuStatFromJson(json);
}
