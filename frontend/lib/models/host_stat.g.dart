// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HostStatImpl _$$HostStatImplFromJson(Map<String, dynamic> json) =>
    _$HostStatImpl(
      hostname: json['hostname'] as String,
      os: json['os'] as String,
      platform: json['platform'] as String,
      procs: (json['procs'] as num).toInt(),
      uptime: (json['uptime'] as num).toInt(),
    );

Map<String, dynamic> _$$HostStatImplToJson(_$HostStatImpl instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'os': instance.os,
      'platform': instance.platform,
      'procs': instance.procs,
      'uptime': instance.uptime,
    };
