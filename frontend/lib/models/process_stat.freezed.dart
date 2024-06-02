// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProcessStat _$ProcessStatFromJson(Map<String, dynamic> json) {
  return _ProcessStat.fromJson(json);
}

/// @nodoc
mixin _$ProcessStat {
  int get pid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpu_percent')
  double get cpuPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'memory_percent')
  double get memoryPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessStatCopyWith<ProcessStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessStatCopyWith<$Res> {
  factory $ProcessStatCopyWith(
          ProcessStat value, $Res Function(ProcessStat) then) =
      _$ProcessStatCopyWithImpl<$Res, ProcessStat>;
  @useResult
  $Res call(
      {int pid,
      String name,
      String status,
      @JsonKey(name: 'cpu_percent') double cpuPercent,
      @JsonKey(name: 'memory_percent') double memoryPercent});
}

/// @nodoc
class _$ProcessStatCopyWithImpl<$Res, $Val extends ProcessStat>
    implements $ProcessStatCopyWith<$Res> {
  _$ProcessStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pid = null,
    Object? name = null,
    Object? status = null,
    Object? cpuPercent = null,
    Object? memoryPercent = null,
  }) {
    return _then(_value.copyWith(
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cpuPercent: null == cpuPercent
          ? _value.cpuPercent
          : cpuPercent // ignore: cast_nullable_to_non_nullable
              as double,
      memoryPercent: null == memoryPercent
          ? _value.memoryPercent
          : memoryPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessStatImplCopyWith<$Res>
    implements $ProcessStatCopyWith<$Res> {
  factory _$$ProcessStatImplCopyWith(
          _$ProcessStatImpl value, $Res Function(_$ProcessStatImpl) then) =
      __$$ProcessStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pid,
      String name,
      String status,
      @JsonKey(name: 'cpu_percent') double cpuPercent,
      @JsonKey(name: 'memory_percent') double memoryPercent});
}

/// @nodoc
class __$$ProcessStatImplCopyWithImpl<$Res>
    extends _$ProcessStatCopyWithImpl<$Res, _$ProcessStatImpl>
    implements _$$ProcessStatImplCopyWith<$Res> {
  __$$ProcessStatImplCopyWithImpl(
      _$ProcessStatImpl _value, $Res Function(_$ProcessStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pid = null,
    Object? name = null,
    Object? status = null,
    Object? cpuPercent = null,
    Object? memoryPercent = null,
  }) {
    return _then(_$ProcessStatImpl(
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cpuPercent: null == cpuPercent
          ? _value.cpuPercent
          : cpuPercent // ignore: cast_nullable_to_non_nullable
              as double,
      memoryPercent: null == memoryPercent
          ? _value.memoryPercent
          : memoryPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessStatImpl implements _ProcessStat {
  const _$ProcessStatImpl(
      {required this.pid,
      required this.name,
      required this.status,
      @JsonKey(name: 'cpu_percent') required this.cpuPercent,
      @JsonKey(name: 'memory_percent') required this.memoryPercent});

  factory _$ProcessStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessStatImplFromJson(json);

  @override
  final int pid;
  @override
  final String name;
  @override
  final String status;
  @override
  @JsonKey(name: 'cpu_percent')
  final double cpuPercent;
  @override
  @JsonKey(name: 'memory_percent')
  final double memoryPercent;

  @override
  String toString() {
    return 'ProcessStat(pid: $pid, name: $name, status: $status, cpuPercent: $cpuPercent, memoryPercent: $memoryPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessStatImpl &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cpuPercent, cpuPercent) ||
                other.cpuPercent == cpuPercent) &&
            (identical(other.memoryPercent, memoryPercent) ||
                other.memoryPercent == memoryPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pid, name, status, cpuPercent, memoryPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessStatImplCopyWith<_$ProcessStatImpl> get copyWith =>
      __$$ProcessStatImplCopyWithImpl<_$ProcessStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessStatImplToJson(
      this,
    );
  }
}

abstract class _ProcessStat implements ProcessStat {
  const factory _ProcessStat(
      {required final int pid,
      required final String name,
      required final String status,
      @JsonKey(name: 'cpu_percent') required final double cpuPercent,
      @JsonKey(name: 'memory_percent')
      required final double memoryPercent}) = _$ProcessStatImpl;

  factory _ProcessStat.fromJson(Map<String, dynamic> json) =
      _$ProcessStatImpl.fromJson;

  @override
  int get pid;
  @override
  String get name;
  @override
  String get status;
  @override
  @JsonKey(name: 'cpu_percent')
  double get cpuPercent;
  @override
  @JsonKey(name: 'memory_percent')
  double get memoryPercent;
  @override
  @JsonKey(ignore: true)
  _$$ProcessStatImplCopyWith<_$ProcessStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
