// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CpuStatImpl _$$CpuStatImplFromJson(Map<String, dynamic> json) =>
    _$CpuStatImpl(
      modelName: json['model_name'] as String,
      family: json['family'] as String,
      cores: (json['cores'] as num).toInt(),
      mhz: (json['mhz'] as num).toInt(),
      coresUsage: (json['cores_usage'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$CpuStatImplToJson(_$CpuStatImpl instance) =>
    <String, dynamic>{
      'model_name': instance.modelName,
      'family': instance.family,
      'cores': instance.cores,
      'mhz': instance.mhz,
      'cores_usage': instance.coresUsage,
    };
