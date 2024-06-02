// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemStatImpl _$$SystemStatImplFromJson(Map<String, dynamic> json) =>
    _$SystemStatImpl(
      hostStat: HostStat.fromJson(json['host_stat'] as Map<String, dynamic>),
      usersStat: (json['users_stat'] as List<dynamic>)
          .map((e) => UserStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      memoryStat:
          MemoryStat.fromJson(json['memory_stat'] as Map<String, dynamic>),
      cpuStat: CpuStat.fromJson(json['cpu_stat'] as Map<String, dynamic>),
      diskStat: DiskStat.fromJson(json['disk_stat'] as Map<String, dynamic>),
      partitionsStat: (json['partitions_stat'] as List<dynamic>)
          .map((e) => PartitionStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      netConnectionsStat: (json['net_connections_stat'] as List<dynamic>)
          .map((e) => NetConnectionStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      processesStat: (json['processes_stat'] as List<dynamic>)
          .map((e) => ProcessStat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SystemStatImplToJson(_$SystemStatImpl instance) =>
    <String, dynamic>{
      'host_stat': instance.hostStat,
      'users_stat': instance.usersStat,
      'memory_stat': instance.memoryStat,
      'cpu_stat': instance.cpuStat,
      'disk_stat': instance.diskStat,
      'partitions_stat': instance.partitionsStat,
      'net_connections_stat': instance.netConnectionsStat,
      'processes_stat': instance.processesStat,
    };
