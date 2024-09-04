// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:rcache_flutter/rcache.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Common test', (WidgetTester tester) async {
    await RCache.common.saveUint8List(
      _values.uint8list,
      key: _RCacheKeyTest.uint8list,
    );
    await RCache.common.saveString(
      _values.string,
      key: _RCacheKeyTest.string,
    );
    await RCache.common.saveBool(
      _values.boolValue,
      key: _RCacheKeyTest.bool,
    );
    await RCache.common.saveInteger(
      _values.intValue,
      key: _RCacheKeyTest.int,
    );
    await RCache.common.saveArray(
      _values.array,
      key: _RCacheKeyTest.array,
    );
    await RCache.common.saveMap(
      _values.map,
      key: _RCacheKeyTest.map,
    );
    await RCache.common.saveDouble(
      _values.doubleValue,
      key: _RCacheKeyTest.double,
    );

    expect(
      await RCache.common.readUint8List(key: _RCacheKeyTest.uint8list),
      _values.uint8list,
    );
    expect(
      await RCache.common.readString(key: _RCacheKeyTest.string),
      _values.string,
    );
    expect(
      await RCache.common.readBool(key: _RCacheKeyTest.bool),
      _values.boolValue,
    );
    expect(
      await RCache.common.readInteger(key: _RCacheKeyTest.int),
      _values.intValue,
    );
    expect(
      await RCache.common.readArray(key: _RCacheKeyTest.array),
      _values.array,
    );
    expect(
      await RCache.common.readMap(key: _RCacheKeyTest.map),
      _values.map,
    );
    expect(
      await RCache.common.readDouble(key: _RCacheKeyTest.double),
      _values.doubleValue,
    );
  });

  testWidgets('Credentials test', (WidgetTester tester) async {
    await RCache.credentials.saveUint8List(
      _values.uint8list,
      key: _RCacheKeyTest.uint8list,
    );
    await RCache.credentials.saveString(
      _values.string,
      key: _RCacheKeyTest.string,
    );
    await RCache.credentials.saveBool(
      _values.boolValue,
      key: _RCacheKeyTest.bool,
    );
    await RCache.credentials.saveInteger(
      _values.intValue,
      key: _RCacheKeyTest.int,
    );
    await RCache.credentials.saveArray(
      _values.array,
      key: _RCacheKeyTest.array,
    );
    await RCache.credentials.saveMap(
      _values.map,
      key: _RCacheKeyTest.map,
    );
    await RCache.credentials.saveDouble(
      _values.doubleValue,
      key: _RCacheKeyTest.double,
    );

    expect(
      await RCache.credentials.readUint8List(key: _RCacheKeyTest.uint8list),
      _values.uint8list,
    );
    expect(
      await RCache.credentials.readString(key: _RCacheKeyTest.string),
      _values.string,
    );
    expect(
      await RCache.credentials.readBool(key: _RCacheKeyTest.bool),
      _values.boolValue,
    );
    expect(
      await RCache.credentials.readInteger(key: _RCacheKeyTest.int),
      _values.intValue,
    );
    expect(
      await RCache.credentials.readArray(key: _RCacheKeyTest.array),
      _values.array,
    );
    expect(
      await RCache.credentials.readMap(key: _RCacheKeyTest.map),
      _values.map,
    );
    expect(
      await RCache.credentials.readDouble(key: _RCacheKeyTest.double),
      _values.doubleValue,
    );
  });
}

class _RCacheKeyTest {
  static RCacheKey get uint8list => RCacheKey("uint8list");

  static RCacheKey get string => RCacheKey("string");

  static RCacheKey get bool => RCacheKey("bool");

  static RCacheKey get int => RCacheKey("int");

  static RCacheKey get array => RCacheKey("array");

  static RCacheKey get map => RCacheKey("map");

  static RCacheKey get double => RCacheKey("double");
}

class _RCacheValueModelTest {
  final Uint8List uint8list;
  final String string;
  final bool boolValue;
  final int intValue;
  final List array;
  final Map<String, dynamic> map;
  final double doubleValue;

  _RCacheValueModelTest({
    required this.uint8list,
    required this.string,
    required this.boolValue,
    required this.intValue,
    required this.array,
    required this.map,
    required this.doubleValue,
  });
}

_RCacheValueModelTest _values = _RCacheValueModelTest(
  uint8list: Uint8List.fromList("RCache".codeUnits),
  string: "RCache",
  boolValue: false,
  intValue: 1,
  array: [1, "b", true],
  map: {"a": 1, "b": "c"},
  doubleValue: 12.123,
);
