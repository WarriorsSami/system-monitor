// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HostStat _$HostStatFromJson(Map<String, dynamic> json) {
  return _HostStat.fromJson(json);
}

/// @nodoc
mixin _$HostStat {
  String get hostname => throw _privateConstructorUsedError;
  String get os => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  int get procs => throw _privateConstructorUsedError;
  int get uptime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostStatCopyWith<HostStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostStatCopyWith<$Res> {
  factory $HostStatCopyWith(HostStat value, $Res Function(HostStat) then) =
      _$HostStatCopyWithImpl<$Res, HostStat>;
  @useResult
  $Res call(
      {String hostname, String os, String platform, int procs, int uptime});
}

/// @nodoc
class _$HostStatCopyWithImpl<$Res, $Val extends HostStat>
    implements $HostStatCopyWith<$Res> {
  _$HostStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostname = null,
    Object? os = null,
    Object? platform = null,
    Object? procs = null,
    Object? uptime = null,
  }) {
    return _then(_value.copyWith(
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      procs: null == procs
          ? _value.procs
          : procs // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HostStatImplCopyWith<$Res>
    implements $HostStatCopyWith<$Res> {
  factory _$$HostStatImplCopyWith(
          _$HostStatImpl value, $Res Function(_$HostStatImpl) then) =
      __$$HostStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hostname, String os, String platform, int procs, int uptime});
}

/// @nodoc
class __$$HostStatImplCopyWithImpl<$Res>
    extends _$HostStatCopyWithImpl<$Res, _$HostStatImpl>
    implements _$$HostStatImplCopyWith<$Res> {
  __$$HostStatImplCopyWithImpl(
      _$HostStatImpl _value, $Res Function(_$HostStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostname = null,
    Object? os = null,
    Object? platform = null,
    Object? procs = null,
    Object? uptime = null,
  }) {
    return _then(_$HostStatImpl(
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      procs: null == procs
          ? _value.procs
          : procs // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostStatImpl implements _HostStat {
  const _$HostStatImpl(
      {required this.hostname,
      required this.os,
      required this.platform,
      required this.procs,
      required this.uptime});

  factory _$HostStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$HostStatImplFromJson(json);

  @override
  final String hostname;
  @override
  final String os;
  @override
  final String platform;
  @override
  final int procs;
  @override
  final int uptime;

  @override
  String toString() {
    return 'HostStat(hostname: $hostname, os: $os, platform: $platform, procs: $procs, uptime: $uptime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostStatImpl &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.procs, procs) || other.procs == procs) &&
            (identical(other.uptime, uptime) || other.uptime == uptime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hostname, os, platform, procs, uptime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostStatImplCopyWith<_$HostStatImpl> get copyWith =>
      __$$HostStatImplCopyWithImpl<_$HostStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostStatImplToJson(
      this,
    );
  }
}

abstract class _HostStat implements HostStat {
  const factory _HostStat(
      {required final String hostname,
      required final String os,
      required final String platform,
      required final int procs,
      required final int uptime}) = _$HostStatImpl;

  factory _HostStat.fromJson(Map<String, dynamic> json) =
      _$HostStatImpl.fromJson;

  @override
  String get hostname;
  @override
  String get os;
  @override
  String get platform;
  @override
  int get procs;
  @override
  int get uptime;
  @override
  @JsonKey(ignore: true)
  _$$HostStatImplCopyWith<_$HostStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
