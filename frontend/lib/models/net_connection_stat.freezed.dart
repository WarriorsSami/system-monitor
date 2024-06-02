// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'net_connection_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetConnectionStat _$NetConnectionStatFromJson(Map<String, dynamic> json) {
  return _NetConnectionStat.fromJson(json);
}

/// @nodoc
mixin _$NetConnectionStat {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bytes_sent')
  int get bytesSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'bytes_recv')
  int get bytesRecv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetConnectionStatCopyWith<NetConnectionStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetConnectionStatCopyWith<$Res> {
  factory $NetConnectionStatCopyWith(
          NetConnectionStat value, $Res Function(NetConnectionStat) then) =
      _$NetConnectionStatCopyWithImpl<$Res, NetConnectionStat>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'bytes_sent') int bytesSent,
      @JsonKey(name: 'bytes_recv') int bytesRecv});
}

/// @nodoc
class _$NetConnectionStatCopyWithImpl<$Res, $Val extends NetConnectionStat>
    implements $NetConnectionStatCopyWith<$Res> {
  _$NetConnectionStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytesSent = null,
    Object? bytesRecv = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytesSent: null == bytesSent
          ? _value.bytesSent
          : bytesSent // ignore: cast_nullable_to_non_nullable
              as int,
      bytesRecv: null == bytesRecv
          ? _value.bytesRecv
          : bytesRecv // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetConnectionStatImplCopyWith<$Res>
    implements $NetConnectionStatCopyWith<$Res> {
  factory _$$NetConnectionStatImplCopyWith(_$NetConnectionStatImpl value,
          $Res Function(_$NetConnectionStatImpl) then) =
      __$$NetConnectionStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'bytes_sent') int bytesSent,
      @JsonKey(name: 'bytes_recv') int bytesRecv});
}

/// @nodoc
class __$$NetConnectionStatImplCopyWithImpl<$Res>
    extends _$NetConnectionStatCopyWithImpl<$Res, _$NetConnectionStatImpl>
    implements _$$NetConnectionStatImplCopyWith<$Res> {
  __$$NetConnectionStatImplCopyWithImpl(_$NetConnectionStatImpl _value,
      $Res Function(_$NetConnectionStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytesSent = null,
    Object? bytesRecv = null,
  }) {
    return _then(_$NetConnectionStatImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytesSent: null == bytesSent
          ? _value.bytesSent
          : bytesSent // ignore: cast_nullable_to_non_nullable
              as int,
      bytesRecv: null == bytesRecv
          ? _value.bytesRecv
          : bytesRecv // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetConnectionStatImpl implements _NetConnectionStat {
  const _$NetConnectionStatImpl(
      {required this.name,
      @JsonKey(name: 'bytes_sent') required this.bytesSent,
      @JsonKey(name: 'bytes_recv') required this.bytesRecv});

  factory _$NetConnectionStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetConnectionStatImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'bytes_sent')
  final int bytesSent;
  @override
  @JsonKey(name: 'bytes_recv')
  final int bytesRecv;

  @override
  String toString() {
    return 'NetConnectionStat(name: $name, bytesSent: $bytesSent, bytesRecv: $bytesRecv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetConnectionStatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bytesSent, bytesSent) ||
                other.bytesSent == bytesSent) &&
            (identical(other.bytesRecv, bytesRecv) ||
                other.bytesRecv == bytesRecv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, bytesSent, bytesRecv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetConnectionStatImplCopyWith<_$NetConnectionStatImpl> get copyWith =>
      __$$NetConnectionStatImplCopyWithImpl<_$NetConnectionStatImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetConnectionStatImplToJson(
      this,
    );
  }
}

abstract class _NetConnectionStat implements NetConnectionStat {
  const factory _NetConnectionStat(
          {required final String name,
          @JsonKey(name: 'bytes_sent') required final int bytesSent,
          @JsonKey(name: 'bytes_recv') required final int bytesRecv}) =
      _$NetConnectionStatImpl;

  factory _NetConnectionStat.fromJson(Map<String, dynamic> json) =
      _$NetConnectionStatImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'bytes_sent')
  int get bytesSent;
  @override
  @JsonKey(name: 'bytes_recv')
  int get bytesRecv;
  @override
  @JsonKey(ignore: true)
  _$$NetConnectionStatImplCopyWith<_$NetConnectionStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
