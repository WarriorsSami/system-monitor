import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MonitorServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
