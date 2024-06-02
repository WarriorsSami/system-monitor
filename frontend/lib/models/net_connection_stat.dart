import 'package:freezed_annotation/freezed_annotation.dart';

part 'net_connection_stat.freezed.dart';
part 'net_connection_stat.g.dart';

@freezed
class NetConnectionStat with _$NetConnectionStat {
  const factory NetConnectionStat({
    required String name,
    @JsonKey(name: 'bytes_sent') required int bytesSent,
    @JsonKey(name: 'bytes_recv') required int bytesRecv,
  }) = _NetConnectionStat;

  factory NetConnectionStat.fromJson(Map<String, dynamic> json) =>
      _$NetConnectionStatFromJson(json);
}
