// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProcessStatImpl _$$ProcessStatImplFromJson(Map<String, dynamic> json) =>
    _$ProcessStatImpl(
      pid: (json['pid'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      cpuPercent: (json['cpu_percent'] as num).toDouble(),
      memoryPercent: (json['memory_percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProcessStatImplToJson(_$ProcessStatImpl instance) =>
    <String, dynamic>{
      'pid': instance.pid,
      'name': instance.name,
      'status': instance.status,
      'cpu_percent': instance.cpuPercent,
      'memory_percent': instance.memoryPercent,
    };
