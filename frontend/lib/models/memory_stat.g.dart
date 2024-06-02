// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoryStatImpl _$$MemoryStatImplFromJson(Map<String, dynamic> json) =>
    _$MemoryStatImpl(
      total: (json['total'] as num).toDouble(),
      available: (json['available'] as num).toDouble(),
      used: (json['used'] as num).toDouble(),
      usedPercent: (json['used_percent'] as num).toDouble(),
      free: (json['free'] as num).toDouble(),
    );

Map<String, dynamic> _$$MemoryStatImplToJson(_$MemoryStatImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'available': instance.available,
      'used': instance.used,
      'used_percent': instance.usedPercent,
      'free': instance.free,
    };
