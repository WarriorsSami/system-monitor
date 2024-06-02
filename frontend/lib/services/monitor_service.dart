import 'dart:async';
import 'dart:convert';

import 'package:frontend/app/app.logger.dart';
import 'package:frontend/models/system_stat.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'consts.dart';

class MonitorService {
  final _logger = getLogger('MonitorService');

  Stream<SystemStat> dialMonitorStream() {
    return WebSocketChannel.connect(Uri.parse(WS_CHANNEL_ADDR))
        .stream
        .transform(SystemStatDecoder());
  }
}

class SystemStatDecoder extends StreamTransformerBase<dynamic, SystemStat> {
  final _logger = getLogger('SystemStatDecoder');

  @override
  Stream<SystemStat> bind(Stream<dynamic> stream) {
    return stream.map((event) {
      try {
        final decoded = jsonDecode(event as String);
        return SystemStat.fromJson(decoded as Map<String, dynamic>);
      } catch (e) {
        _logger.e('Failed to decode SystemStat: $e');
        rethrow;
      }
    });
  }
}
