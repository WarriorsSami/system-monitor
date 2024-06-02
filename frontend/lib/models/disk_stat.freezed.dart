// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disk_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiskStat _$DiskStatFromJson(Map<String, dynamic> json) {
  return _DiskStat.fromJson(json);
}

/// @nodoc
mixin _$DiskStat {
  String get path => throw _privateConstructorUsedError;
  String get fstype => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get free => throw _privateConstructorUsedError;
  double get used => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_percent')
  double get usedPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskStatCopyWith<DiskStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskStatCopyWith<$Res> {
  factory $DiskStatCopyWith(DiskStat value, $Res Function(DiskStat) then) =
      _$DiskStatCopyWithImpl<$Res, DiskStat>;
  @useResult
  $Res call(
      {String path,
      String fstype,
      double total,
      double free,
      double used,
      @JsonKey(name: 'used_percent') double usedPercent});
}

/// @nodoc
class _$DiskStatCopyWithImpl<$Res, $Val extends DiskStat>
    implements $DiskStatCopyWith<$Res> {
  _$DiskStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? fstype = null,
    Object? total = null,
    Object? free = null,
    Object? used = null,
    Object? usedPercent = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fstype: null == fstype
          ? _value.fstype
          : fstype // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as double,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      usedPercent: null == usedPercent
          ? _value.usedPercent
          : usedPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiskStatImplCopyWith<$Res>
    implements $DiskStatCopyWith<$Res> {
  factory _$$DiskStatImplCopyWith(
          _$DiskStatImpl value, $Res Function(_$DiskStatImpl) then) =
      __$$DiskStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      String fstype,
      double total,
      double free,
      double used,
      @JsonKey(name: 'used_percent') double usedPercent});
}

/// @nodoc
class __$$DiskStatImplCopyWithImpl<$Res>
    extends _$DiskStatCopyWithImpl<$Res, _$DiskStatImpl>
    implements _$$DiskStatImplCopyWith<$Res> {
  __$$DiskStatImplCopyWithImpl(
      _$DiskStatImpl _value, $Res Function(_$DiskStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? fstype = null,
    Object? total = null,
    Object? free = null,
    Object? used = null,
    Object? usedPercent = null,
  }) {
    return _then(_$DiskStatImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fstype: null == fstype
          ? _value.fstype
          : fstype // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as double,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      usedPercent: null == usedPercent
          ? _value.usedPercent
          : usedPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiskStatImpl implements _DiskStat {
  const _$DiskStatImpl(
      {required this.path,
      required this.fstype,
      required this.total,
      required this.free,
      required this.used,
      @JsonKey(name: 'used_percent') required this.usedPercent});

  factory _$DiskStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiskStatImplFromJson(json);

  @override
  final String path;
  @override
  final String fstype;
  @override
  final double total;
  @override
  final double free;
  @override
  final double used;
  @override
  @JsonKey(name: 'used_percent')
  final double usedPercent;

  @override
  String toString() {
    return 'DiskStat(path: $path, fstype: $fstype, total: $total, free: $free, used: $used, usedPercent: $usedPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiskStatImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.fstype, fstype) || other.fstype == fstype) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.free, free) || other.free == free) &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.usedPercent, usedPercent) ||
                other.usedPercent == usedPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, path, fstype, total, free, used, usedPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiskStatImplCopyWith<_$DiskStatImpl> get copyWith =>
      __$$DiskStatImplCopyWithImpl<_$DiskStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiskStatImplToJson(
      this,
    );
  }
}

abstract class _DiskStat implements DiskStat {
  const factory _DiskStat(
          {required final String path,
          required final String fstype,
          required final double total,
          required final double free,
          required final double used,
          @JsonKey(name: 'used_percent') required final double usedPercent}) =
      _$DiskStatImpl;

  factory _DiskStat.fromJson(Map<String, dynamic> json) =
      _$DiskStatImpl.fromJson;

  @override
  String get path;
  @override
  String get fstype;
  @override
  double get total;
  @override
  double get free;
  @override
  double get used;
  @override
  @JsonKey(name: 'used_percent')
  double get usedPercent;
  @override
  @JsonKey(ignore: true)
  _$$DiskStatImplCopyWith<_$DiskStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
