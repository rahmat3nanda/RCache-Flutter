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
    await RCache.common.saveData(
      data: _values.data,
      key: _RCacheKeyTest.data,
    );
    await RCache.common.saveString(
      string: _values.string,
      key: _RCacheKeyTest.string,
    );
    await RCache.common.saveBool(
      value: _values.boolValue,
      key: _RCacheKeyTest.bool,
    );
    await RCache.common.saveInteger(
      value: _values.intValue,
      key: _RCacheKeyTest.int,
    );
    await RCache.common.saveArray(
      array: _values.array,
      key: _RCacheKeyTest.array,
    );
    await RCache.common.saveDictionary(
      dictionary: _values.dictionary,
      key: _RCacheKeyTest.dictionary,
    );
    await RCache.common.saveDouble(
      value: _values.doubleValue,
      key: _RCacheKeyTest.double,
    );

    expect(
      await RCache.common.readData(key: _RCacheKeyTest.data),
      _values.data,
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
      await RCache.common.readDictionary(key: _RCacheKeyTest.dictionary),
      _values.dictionary,
    );
    expect(
      await RCache.common.readDouble(key: _RCacheKeyTest.double),
      _values.doubleValue,
    );
  });

  testWidgets('Credentials test', (WidgetTester tester) async {
    await RCache.credentials.saveData(
      data: _values.data,
      key: _RCacheKeyTest.data,
    );
    await RCache.credentials.saveString(
      string: _values.string,
      key: _RCacheKeyTest.string,
    );
    await RCache.credentials.saveBool(
      value: _values.boolValue,
      key: _RCacheKeyTest.bool,
    );
    await RCache.credentials.saveInteger(
      value: _values.intValue,
      key: _RCacheKeyTest.int,
    );
    await RCache.credentials.saveArray(
      array: _values.array,
      key: _RCacheKeyTest.array,
    );
    await RCache.credentials.saveDictionary(
      dictionary: _values.dictionary,
      key: _RCacheKeyTest.dictionary,
    );
    await RCache.credentials.saveDouble(
      value: _values.doubleValue,
      key: _RCacheKeyTest.double,
    );

    expect(
      await RCache.credentials.readData(key: _RCacheKeyTest.data),
      _values.data,
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
      await RCache.credentials.readDictionary(key: _RCacheKeyTest.dictionary),
      _values.dictionary,
    );
    expect(
      await RCache.credentials.readDouble(key: _RCacheKeyTest.double),
      _values.doubleValue,
    );
  });
}

class _RCacheKeyTest {
  static RCacheKey get data => RCacheKey("data");

  static RCacheKey get string => RCacheKey("string");

  static RCacheKey get bool => RCacheKey("bool");

  static RCacheKey get int => RCacheKey("int");

  static RCacheKey get array => RCacheKey("array");

  static RCacheKey get dictionary => RCacheKey("dictionary");

  static RCacheKey get double => RCacheKey("double");
}

class _RCacheValueModelTest {
  final Uint8List data;
  final String string;
  final bool boolValue;
  final int intValue;
  final List array;
  final Map<String, dynamic> dictionary;
  final double doubleValue;

  _RCacheValueModelTest({
    required this.data,
    required this.string,
    required this.boolValue,
    required this.intValue,
    required this.array,
    required this.dictionary,
    required this.doubleValue,
  });
}

_RCacheValueModelTest _values = _RCacheValueModelTest(
  data: Uint8List.fromList("RCache".codeUnits),
  string: "RCache",
  boolValue: false,
  intValue: 1,
  array: [1, "b", true],
  dictionary: {"a": 1, "b": "c"},
  doubleValue: 12.123,
);
