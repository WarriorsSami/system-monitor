// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoryStat _$MemoryStatFromJson(Map<String, dynamic> json) {
  return _MemoryStat.fromJson(json);
}

/// @nodoc
mixin _$MemoryStat {
  double get total => throw _privateConstructorUsedError;
  double get available => throw _privateConstructorUsedError;
  double get used => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_percent')
  double get usedPercent => throw _privateConstructorUsedError;
  double get free => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryStatCopyWith<MemoryStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryStatCopyWith<$Res> {
  factory $MemoryStatCopyWith(
          MemoryStat value, $Res Function(MemoryStat) then) =
      _$MemoryStatCopyWithImpl<$Res, MemoryStat>;
  @useResult
  $Res call(
      {double total,
      double available,
      double used,
      @JsonKey(name: 'used_percent') double usedPercent,
      double free});
}

/// @nodoc
class _$MemoryStatCopyWithImpl<$Res, $Val extends MemoryStat>
    implements $MemoryStatCopyWith<$Res> {
  _$MemoryStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
    Object? used = null,
    Object? usedPercent = null,
    Object? free = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as double,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      usedPercent: null == usedPercent
          ? _value.usedPercent
          : usedPercent // ignore: cast_nullable_to_non_nullable
              as double,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoryStatImplCopyWith<$Res>
    implements $MemoryStatCopyWith<$Res> {
  factory _$$MemoryStatImplCopyWith(
          _$MemoryStatImpl value, $Res Function(_$MemoryStatImpl) then) =
      __$$MemoryStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double total,
      double available,
      double used,
      @JsonKey(name: 'used_percent') double usedPercent,
      double free});
}

/// @nodoc
class __$$MemoryStatImplCopyWithImpl<$Res>
    extends _$MemoryStatCopyWithImpl<$Res, _$MemoryStatImpl>
    implements _$$MemoryStatImplCopyWith<$Res> {
  __$$MemoryStatImplCopyWithImpl(
      _$MemoryStatImpl _value, $Res Function(_$MemoryStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
    Object? used = null,
    Object? usedPercent = null,
    Object? free = null,
  }) {
    return _then(_$MemoryStatImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as double,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      usedPercent: null == usedPercent
          ? _value.usedPercent
          : usedPercent // ignore: cast_nullable_to_non_nullable
              as double,
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoryStatImpl implements _MemoryStat {
  const _$MemoryStatImpl(
      {required this.total,
      required this.available,
      required this.used,
      @JsonKey(name: 'used_percent') required this.usedPercent,
      required this.free});

  factory _$MemoryStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryStatImplFromJson(json);

  @override
  final double total;
  @override
  final double available;
  @override
  final double used;
  @override
  @JsonKey(name: 'used_percent')
  final double usedPercent;
  @override
  final double free;

  @override
  String toString() {
    return 'MemoryStat(total: $total, available: $available, used: $used, usedPercent: $usedPercent, free: $free)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryStatImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.usedPercent, usedPercent) ||
                other.usedPercent == usedPercent) &&
            (identical(other.free, free) || other.free == free));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, available, used, usedPercent, free);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryStatImplCopyWith<_$MemoryStatImpl> get copyWith =>
      __$$MemoryStatImplCopyWithImpl<_$MemoryStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryStatImplToJson(
      this,
    );
  }
}

abstract class _MemoryStat implements MemoryStat {
  const factory _MemoryStat(
      {required final double total,
      required final double available,
      required final double used,
      @JsonKey(name: 'used_percent') required final double usedPercent,
      required final double free}) = _$MemoryStatImpl;

  factory _MemoryStat.fromJson(Map<String, dynamic> json) =
      _$MemoryStatImpl.fromJson;

  @override
  double get total;
  @override
  double get available;
  @override
  double get used;
  @override
  @JsonKey(name: 'used_percent')
  double get usedPercent;
  @override
  double get free;
  @override
  @JsonKey(ignore: true)
  _$$MemoryStatImplCopyWith<_$MemoryStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
