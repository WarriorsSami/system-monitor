// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partition_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartitionStat _$PartitionStatFromJson(Map<String, dynamic> json) {
  return _PartitionStat.fromJson(json);
}

/// @nodoc
mixin _$PartitionStat {
  String get device => throw _privateConstructorUsedError;
  String get mountpoint => throw _privateConstructorUsedError;
  String get fstype => throw _privateConstructorUsedError;
  List<String> get opts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartitionStatCopyWith<PartitionStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartitionStatCopyWith<$Res> {
  factory $PartitionStatCopyWith(
          PartitionStat value, $Res Function(PartitionStat) then) =
      _$PartitionStatCopyWithImpl<$Res, PartitionStat>;
  @useResult
  $Res call(
      {String device, String mountpoint, String fstype, List<String> opts});
}

/// @nodoc
class _$PartitionStatCopyWithImpl<$Res, $Val extends PartitionStat>
    implements $PartitionStatCopyWith<$Res> {
  _$PartitionStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? mountpoint = null,
    Object? fstype = null,
    Object? opts = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _value.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      fstype: null == fstype
          ? _value.fstype
          : fstype // ignore: cast_nullable_to_non_nullable
              as String,
      opts: null == opts
          ? _value.opts
          : opts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartitionStatImplCopyWith<$Res>
    implements $PartitionStatCopyWith<$Res> {
  factory _$$PartitionStatImplCopyWith(
          _$PartitionStatImpl value, $Res Function(_$PartitionStatImpl) then) =
      __$$PartitionStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String device, String mountpoint, String fstype, List<String> opts});
}

/// @nodoc
class __$$PartitionStatImplCopyWithImpl<$Res>
    extends _$PartitionStatCopyWithImpl<$Res, _$PartitionStatImpl>
    implements _$$PartitionStatImplCopyWith<$Res> {
  __$$PartitionStatImplCopyWithImpl(
      _$PartitionStatImpl _value, $Res Function(_$PartitionStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? mountpoint = null,
    Object? fstype = null,
    Object? opts = null,
  }) {
    return _then(_$PartitionStatImpl(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      mountpoint: null == mountpoint
          ? _value.mountpoint
          : mountpoint // ignore: cast_nullable_to_non_nullable
              as String,
      fstype: null == fstype
          ? _value.fstype
          : fstype // ignore: cast_nullable_to_non_nullable
              as String,
      opts: null == opts
          ? _value._opts
          : opts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartitionStatImpl implements _PartitionStat {
  const _$PartitionStatImpl(
      {required this.device,
      required this.mountpoint,
      required this.fstype,
      required final List<String> opts})
      : _opts = opts;

  factory _$PartitionStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartitionStatImplFromJson(json);

  @override
  final String device;
  @override
  final String mountpoint;
  @override
  final String fstype;
  final List<String> _opts;
  @override
  List<String> get opts {
    if (_opts is EqualUnmodifiableListView) return _opts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_opts);
  }

  @override
  String toString() {
    return 'PartitionStat(device: $device, mountpoint: $mountpoint, fstype: $fstype, opts: $opts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartitionStatImpl &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.mountpoint, mountpoint) ||
                other.mountpoint == mountpoint) &&
            (identical(other.fstype, fstype) || other.fstype == fstype) &&
            const DeepCollectionEquality().equals(other._opts, _opts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device, mountpoint, fstype,
      const DeepCollectionEquality().hash(_opts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartitionStatImplCopyWith<_$PartitionStatImpl> get copyWith =>
      __$$PartitionStatImplCopyWithImpl<_$PartitionStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartitionStatImplToJson(
      this,
    );
  }
}

abstract class _PartitionStat implements PartitionStat {
  const factory _PartitionStat(
      {required final String device,
      required final String mountpoint,
      required final String fstype,
      required final List<String> opts}) = _$PartitionStatImpl;

  factory _PartitionStat.fromJson(Map<String, dynamic> json) =
      _$PartitionStatImpl.fromJson;

  @override
  String get device;
  @override
  String get mountpoint;
  @override
  String get fstype;
  @override
  List<String> get opts;
  @override
  @JsonKey(ignore: true)
  _$$PartitionStatImplCopyWith<_$PartitionStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
