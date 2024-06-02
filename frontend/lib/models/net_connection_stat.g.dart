// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_connection_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetConnectionStatImpl _$$NetConnectionStatImplFromJson(
        Map<String, dynamic> json) =>
    _$NetConnectionStatImpl(
      name: json['name'] as String,
      bytesSent: (json['bytes_sent'] as num).toInt(),
      bytesRecv: (json['bytes_recv'] as num).toInt(),
    );

Map<String, dynamic> _$$NetConnectionStatImplToJson(
        _$NetConnectionStatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bytes_sent': instance.bytesSent,
      'bytes_recv': instance.bytesRecv,
    };
