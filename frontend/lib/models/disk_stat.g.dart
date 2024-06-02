// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiskStatImpl _$$DiskStatImplFromJson(Map<String, dynamic> json) =>
    _$DiskStatImpl(
      path: json['path'] as String,
      fstype: json['fstype'] as String,
      total: (json['total'] as num).toDouble(),
      free: (json['free'] as num).toDouble(),
      used: (json['used'] as num).toDouble(),
      usedPercent: (json['used_percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$DiskStatImplToJson(_$DiskStatImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'fstype': instance.fstype,
      'total': instance.total,
      'free': instance.free,
      'used': instance.used,
      'used_percent': instance.usedPercent,
    };
