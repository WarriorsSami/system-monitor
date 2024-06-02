// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemStat _$SystemStatFromJson(Map<String, dynamic> json) {
  return _SystemStat.fromJson(json);
}

/// @nodoc
mixin _$SystemStat {
  @JsonKey(name: 'host_stat')
  HostStat get hostStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'users_stat')
  List<UserStat> get usersStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'memory_stat')
  MemoryStat get memoryStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpu_stat')
  CpuStat get cpuStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk_stat')
  DiskStat get diskStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'partitions_stat')
  List<PartitionStat> get partitionsStat => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_connections_stat')
  List<NetConnectionStat> get netConnectionsStat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'processes_stat')
  List<ProcessStat> get processesStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemStatCopyWith<SystemStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemStatCopyWith<$Res> {
  factory $SystemStatCopyWith(
          SystemStat value, $Res Function(SystemStat) then) =
      _$SystemStatCopyWithImpl<$Res, SystemStat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'host_stat') HostStat hostStat,
      @JsonKey(name: 'users_stat') List<UserStat> usersStat,
      @JsonKey(name: 'memory_stat') MemoryStat memoryStat,
      @JsonKey(name: 'cpu_stat') CpuStat cpuStat,
      @JsonKey(name: 'disk_stat') DiskStat diskStat,
      @JsonKey(name: 'partitions_stat') List<PartitionStat> partitionsStat,
      @JsonKey(name: 'net_connections_stat')
      List<NetConnectionStat> netConnectionsStat,
      @JsonKey(name: 'processes_stat') List<ProcessStat> processesStat});

  $HostStatCopyWith<$Res> get hostStat;
  $MemoryStatCopyWith<$Res> get memoryStat;
  $CpuStatCopyWith<$Res> get cpuStat;
  $DiskStatCopyWith<$Res> get diskStat;
}

/// @nodoc
class _$SystemStatCopyWithImpl<$Res, $Val extends SystemStat>
    implements $SystemStatCopyWith<$Res> {
  _$SystemStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostStat = null,
    Object? usersStat = null,
    Object? memoryStat = null,
    Object? cpuStat = null,
    Object? diskStat = null,
    Object? partitionsStat = null,
    Object? netConnectionsStat = null,
    Object? processesStat = null,
  }) {
    return _then(_value.copyWith(
      hostStat: null == hostStat
          ? _value.hostStat
          : hostStat // ignore: cast_nullable_to_non_nullable
              as HostStat,
      usersStat: null == usersStat
          ? _value.usersStat
          : usersStat // ignore: cast_nullable_to_non_nullable
              as List<UserStat>,
      memoryStat: null == memoryStat
          ? _value.memoryStat
          : memoryStat // ignore: cast_nullable_to_non_nullable
              as MemoryStat,
      cpuStat: null == cpuStat
          ? _value.cpuStat
          : cpuStat // ignore: cast_nullable_to_non_nullable
              as CpuStat,
      diskStat: null == diskStat
          ? _value.diskStat
          : diskStat // ignore: cast_nullable_to_non_nullable
              as DiskStat,
      partitionsStat: null == partitionsStat
          ? _value.partitionsStat
          : partitionsStat // ignore: cast_nullable_to_non_nullable
              as List<PartitionStat>,
      netConnectionsStat: null == netConnectionsStat
          ? _value.netConnectionsStat
          : netConnectionsStat // ignore: cast_nullable_to_non_nullable
              as List<NetConnectionStat>,
      processesStat: null == processesStat
          ? _value.processesStat
          : processesStat // ignore: cast_nullable_to_non_nullable
              as List<ProcessStat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HostStatCopyWith<$Res> get hostStat {
    return $HostStatCopyWith<$Res>(_value.hostStat, (value) {
      return _then(_value.copyWith(hostStat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MemoryStatCopyWith<$Res> get memoryStat {
    return $MemoryStatCopyWith<$Res>(_value.memoryStat, (value) {
      return _then(_value.copyWith(memoryStat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuStatCopyWith<$Res> get cpuStat {
    return $CpuStatCopyWith<$Res>(_value.cpuStat, (value) {
      return _then(_value.copyWith(cpuStat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiskStatCopyWith<$Res> get diskStat {
    return $DiskStatCopyWith<$Res>(_value.diskStat, (value) {
      return _then(_value.copyWith(diskStat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemStatImplCopyWith<$Res>
    implements $SystemStatCopyWith<$Res> {
  factory _$$SystemStatImplCopyWith(
          _$SystemStatImpl value, $Res Function(_$SystemStatImpl) then) =
      __$$SystemStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'host_stat') HostStat hostStat,
      @JsonKey(name: 'users_stat') List<UserStat> usersStat,
      @JsonKey(name: 'memory_stat') MemoryStat memoryStat,
      @JsonKey(name: 'cpu_stat') CpuStat cpuStat,
      @JsonKey(name: 'disk_stat') DiskStat diskStat,
      @JsonKey(name: 'partitions_stat') List<PartitionStat> partitionsStat,
      @JsonKey(name: 'net_connections_stat')
      List<NetConnectionStat> netConnectionsStat,
      @JsonKey(name: 'processes_stat') List<ProcessStat> processesStat});

  @override
  $HostStatCopyWith<$Res> get hostStat;
  @override
  $MemoryStatCopyWith<$Res> get memoryStat;
  @override
  $CpuStatCopyWith<$Res> get cpuStat;
  @override
  $DiskStatCopyWith<$Res> get diskStat;
}

/// @nodoc
class __$$SystemStatImplCopyWithImpl<$Res>
    extends _$SystemStatCopyWithImpl<$Res, _$SystemStatImpl>
    implements _$$SystemStatImplCopyWith<$Res> {
  __$$SystemStatImplCopyWithImpl(
      _$SystemStatImpl _value, $Res Function(_$SystemStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostStat = null,
    Object? usersStat = null,
    Object? memoryStat = null,
    Object? cpuStat = null,
    Object? diskStat = null,
    Object? partitionsStat = null,
    Object? netConnectionsStat = null,
    Object? processesStat = null,
  }) {
    return _then(_$SystemStatImpl(
      hostStat: null == hostStat
          ? _value.hostStat
          : hostStat // ignore: cast_nullable_to_non_nullable
              as HostStat,
      usersStat: null == usersStat
          ? _value._usersStat
          : usersStat // ignore: cast_nullable_to_non_nullable
              as List<UserStat>,
      memoryStat: null == memoryStat
          ? _value.memoryStat
          : memoryStat // ignore: cast_nullable_to_non_nullable
              as MemoryStat,
      cpuStat: null == cpuStat
          ? _value.cpuStat
          : cpuStat // ignore: cast_nullable_to_non_nullable
              as CpuStat,
      diskStat: null == diskStat
          ? _value.diskStat
          : diskStat // ignore: cast_nullable_to_non_nullable
              as DiskStat,
      partitionsStat: null == partitionsStat
          ? _value._partitionsStat
          : partitionsStat // ignore: cast_nullable_to_non_nullable
              as List<PartitionStat>,
      netConnectionsStat: null == netConnectionsStat
          ? _value._netConnectionsStat
          : netConnectionsStat // ignore: cast_nullable_to_non_nullable
              as List<NetConnectionStat>,
      processesStat: null == processesStat
          ? _value._processesStat
          : processesStat // ignore: cast_nullable_to_non_nullable
              as List<ProcessStat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemStatImpl implements _SystemStat {
  const _$SystemStatImpl(
      {@JsonKey(name: 'host_stat') required this.hostStat,
      @JsonKey(name: 'users_stat') required final List<UserStat> usersStat,
      @JsonKey(name: 'memory_stat') required this.memoryStat,
      @JsonKey(name: 'cpu_stat') required this.cpuStat,
      @JsonKey(name: 'disk_stat') required this.diskStat,
      @JsonKey(name: 'partitions_stat')
      required final List<PartitionStat> partitionsStat,
      @JsonKey(name: 'net_connections_stat')
      required final List<NetConnectionStat> netConnectionsStat,
      @JsonKey(name: 'processes_stat')
      required final List<ProcessStat> processesStat})
      : _usersStat = usersStat,
        _partitionsStat = partitionsStat,
        _netConnectionsStat = netConnectionsStat,
        _processesStat = processesStat;

  factory _$SystemStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemStatImplFromJson(json);

  @override
  @JsonKey(name: 'host_stat')
  final HostStat hostStat;
  final List<UserStat> _usersStat;
  @override
  @JsonKey(name: 'users_stat')
  List<UserStat> get usersStat {
    if (_usersStat is EqualUnmodifiableListView) return _usersStat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersStat);
  }

  @override
  @JsonKey(name: 'memory_stat')
  final MemoryStat memoryStat;
  @override
  @JsonKey(name: 'cpu_stat')
  final CpuStat cpuStat;
  @override
  @JsonKey(name: 'disk_stat')
  final DiskStat diskStat;
  final List<PartitionStat> _partitionsStat;
  @override
  @JsonKey(name: 'partitions_stat')
  List<PartitionStat> get partitionsStat {
    if (_partitionsStat is EqualUnmodifiableListView) return _partitionsStat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partitionsStat);
  }

  final List<NetConnectionStat> _netConnectionsStat;
  @override
  @JsonKey(name: 'net_connections_stat')
  List<NetConnectionStat> get netConnectionsStat {
    if (_netConnectionsStat is EqualUnmodifiableListView)
      return _netConnectionsStat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_netConnectionsStat);
  }

  final List<ProcessStat> _processesStat;
  @override
  @JsonKey(name: 'processes_stat')
  List<ProcessStat> get processesStat {
    if (_processesStat is EqualUnmodifiableListView) return _processesStat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processesStat);
  }

  @override
  String toString() {
    return 'SystemStat(hostStat: $hostStat, usersStat: $usersStat, memoryStat: $memoryStat, cpuStat: $cpuStat, diskStat: $diskStat, partitionsStat: $partitionsStat, netConnectionsStat: $netConnectionsStat, processesStat: $processesStat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemStatImpl &&
            (identical(other.hostStat, hostStat) ||
                other.hostStat == hostStat) &&
            const DeepCollectionEquality()
                .equals(other._usersStat, _usersStat) &&
            (identical(other.memoryStat, memoryStat) ||
                other.memoryStat == memoryStat) &&
            (identical(other.cpuStat, cpuStat) || other.cpuStat == cpuStat) &&
            (identical(other.diskStat, diskStat) ||
                other.diskStat == diskStat) &&
            const DeepCollectionEquality()
                .equals(other._partitionsStat, _partitionsStat) &&
            const DeepCollectionEquality()
                .equals(other._netConnectionsStat, _netConnectionsStat) &&
            const DeepCollectionEquality()
                .equals(other._processesStat, _processesStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hostStat,
      const DeepCollectionEquality().hash(_usersStat),
      memoryStat,
      cpuStat,
      diskStat,
      const DeepCollectionEquality().hash(_partitionsStat),
      const DeepCollectionEquality().hash(_netConnectionsStat),
      const DeepCollectionEquality().hash(_processesStat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemStatImplCopyWith<_$SystemStatImpl> get copyWith =>
      __$$SystemStatImplCopyWithImpl<_$SystemStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemStatImplToJson(
      this,
    );
  }
}

abstract class _SystemStat implements SystemStat {
  const factory _SystemStat(
      {@JsonKey(name: 'host_stat') required final HostStat hostStat,
      @JsonKey(name: 'users_stat') required final List<UserStat> usersStat,
      @JsonKey(name: 'memory_stat') required final MemoryStat memoryStat,
      @JsonKey(name: 'cpu_stat') required final CpuStat cpuStat,
      @JsonKey(name: 'disk_stat') required final DiskStat diskStat,
      @JsonKey(name: 'partitions_stat')
      required final List<PartitionStat> partitionsStat,
      @JsonKey(name: 'net_connections_stat')
      required final List<NetConnectionStat> netConnectionsStat,
      @JsonKey(name: 'processes_stat')
      required final List<ProcessStat> processesStat}) = _$SystemStatImpl;

  factory _SystemStat.fromJson(Map<String, dynamic> json) =
      _$SystemStatImpl.fromJson;

  @override
  @JsonKey(name: 'host_stat')
  HostStat get hostStat;
  @override
  @JsonKey(name: 'users_stat')
  List<UserStat> get usersStat;
  @override
  @JsonKey(name: 'memory_stat')
  MemoryStat get memoryStat;
  @override
  @JsonKey(name: 'cpu_stat')
  CpuStat get cpuStat;
  @override
  @JsonKey(name: 'disk_stat')
  DiskStat get diskStat;
  @override
  @JsonKey(name: 'partitions_stat')
  List<PartitionStat> get partitionsStat;
  @override
  @JsonKey(name: 'net_connections_stat')
  List<NetConnectionStat> get netConnectionsStat;
  @override
  @JsonKey(name: 'processes_stat')
  List<ProcessStat> get processesStat;
  @override
  @JsonKey(ignore: true)
  _$$SystemStatImplCopyWith<_$SystemStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
