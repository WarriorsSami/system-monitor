// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cpu_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CpuStat _$CpuStatFromJson(Map<String, dynamic> json) {
  return _CpuStat.fromJson(json);
}

/// @nodoc
mixin _$CpuStat {
  @JsonKey(name: 'model_name')
  String get modelName => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  int get cores => throw _privateConstructorUsedError;
  int get mhz => throw _privateConstructorUsedError;
  @JsonKey(name: 'cores_usage')
  List<double> get coresUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuStatCopyWith<CpuStat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuStatCopyWith<$Res> {
  factory $CpuStatCopyWith(CpuStat value, $Res Function(CpuStat) then) =
      _$CpuStatCopyWithImpl<$Res, CpuStat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'model_name') String modelName,
      String family,
      int cores,
      int mhz,
      @JsonKey(name: 'cores_usage') List<double> coresUsage});
}

/// @nodoc
class _$CpuStatCopyWithImpl<$Res, $Val extends CpuStat>
    implements $CpuStatCopyWith<$Res> {
  _$CpuStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelName = null,
    Object? family = null,
    Object? cores = null,
    Object? mhz = null,
    Object? coresUsage = null,
  }) {
    return _then(_value.copyWith(
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      cores: null == cores
          ? _value.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as int,
      mhz: null == mhz
          ? _value.mhz
          : mhz // ignore: cast_nullable_to_non_nullable
              as int,
      coresUsage: null == coresUsage
          ? _value.coresUsage
          : coresUsage // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CpuStatImplCopyWith<$Res> implements $CpuStatCopyWith<$Res> {
  factory _$$CpuStatImplCopyWith(
          _$CpuStatImpl value, $Res Function(_$CpuStatImpl) then) =
      __$$CpuStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'model_name') String modelName,
      String family,
      int cores,
      int mhz,
      @JsonKey(name: 'cores_usage') List<double> coresUsage});
}

/// @nodoc
class __$$CpuStatImplCopyWithImpl<$Res>
    extends _$CpuStatCopyWithImpl<$Res, _$CpuStatImpl>
    implements _$$CpuStatImplCopyWith<$Res> {
  __$$CpuStatImplCopyWithImpl(
      _$CpuStatImpl _value, $Res Function(_$CpuStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelName = null,
    Object? family = null,
    Object? cores = null,
    Object? mhz = null,
    Object? coresUsage = null,
  }) {
    return _then(_$CpuStatImpl(
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      cores: null == cores
          ? _value.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as int,
      mhz: null == mhz
          ? _value.mhz
          : mhz // ignore: cast_nullable_to_non_nullable
              as int,
      coresUsage: null == coresUsage
          ? _value._coresUsage
          : coresUsage // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CpuStatImpl implements _CpuStat {
  const _$CpuStatImpl(
      {@JsonKey(name: 'model_name') required this.modelName,
      required this.family,
      required this.cores,
      required this.mhz,
      @JsonKey(name: 'cores_usage') required final List<double> coresUsage})
      : _coresUsage = coresUsage;

  factory _$CpuStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CpuStatImplFromJson(json);

  @override
  @JsonKey(name: 'model_name')
  final String modelName;
  @override
  final String family;
  @override
  final int cores;
  @override
  final int mhz;
  final List<double> _coresUsage;
  @override
  @JsonKey(name: 'cores_usage')
  List<double> get coresUsage {
    if (_coresUsage is EqualUnmodifiableListView) return _coresUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coresUsage);
  }

  @override
  String toString() {
    return 'CpuStat(modelName: $modelName, family: $family, cores: $cores, mhz: $mhz, coresUsage: $coresUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CpuStatImpl &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.cores, cores) || other.cores == cores) &&
            (identical(other.mhz, mhz) || other.mhz == mhz) &&
            const DeepCollectionEquality()
                .equals(other._coresUsage, _coresUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modelName, family, cores, mhz,
      const DeepCollectionEquality().hash(_coresUsage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CpuStatImplCopyWith<_$CpuStatImpl> get copyWith =>
      __$$CpuStatImplCopyWithImpl<_$CpuStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CpuStatImplToJson(
      this,
    );
  }
}

abstract class _CpuStat implements CpuStat {
  const factory _CpuStat(
      {@JsonKey(name: 'model_name') required final String modelName,
      required final String family,
      required final int cores,
      required final int mhz,
      @JsonKey(name: 'cores_usage')
      required final List<double> coresUsage}) = _$CpuStatImpl;

  factory _CpuStat.fromJson(Map<String, dynamic> json) = _$CpuStatImpl.fromJson;

  @override
  @JsonKey(name: 'model_name')
  String get modelName;
  @override
  String get family;
  @override
  int get cores;
  @override
  int get mhz;
  @override
  @JsonKey(name: 'cores_usage')
  List<double> get coresUsage;
  @override
  @JsonKey(ignore: true)
  _$$CpuStatImplCopyWith<_$CpuStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
