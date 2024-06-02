// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partition_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartitionStatImpl _$$PartitionStatImplFromJson(Map<String, dynamic> json) =>
    _$PartitionStatImpl(
      device: json['device'] as String,
      mountpoint: json['mountpoint'] as String,
      fstype: json['fstype'] as String,
      opts: (json['opts'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PartitionStatImplToJson(_$PartitionStatImpl instance) =>
    <String, dynamic>{
      'device': instance.device,
      'mountpoint': instance.mountpoint,
      'fstype': instance.fstype,
      'opts': instance.opts,
    };
