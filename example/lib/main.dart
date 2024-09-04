import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:rcache_flutter/rcache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    runTest();
  }

  void runTest() async {
    await _commonTest();
    await _credentialsTest();
  }

  Future<void> _commonTest() async {
    log("Common Test =======================================");

    await RCache.common.saveUint8List(
      _values.uint8List,
      key: _RCacheKeyTest.uint8List,
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

    log(
      "uint8List# Local: ${_values.uint8List} ||| Store: ${await RCache.common.readUint8List(key: _RCacheKeyTest.uint8List)}",
    );
    log(
      "string# Local: ${_values.string} ||| Store: ${await RCache.common.readString(key: _RCacheKeyTest.string)}",
    );
    log(
      "bool# Local: ${_values.boolValue} ||| Store: ${await RCache.common.readBool(key: _RCacheKeyTest.bool)}",
    );
    log(
      "integer# Local: ${_values.intValue} ||| Store: ${await RCache.common.readInteger(key: _RCacheKeyTest.int)}",
    );
    log(
      "array# Local: ${_values.array} ||| Store: ${await RCache.common.readArray(key: _RCacheKeyTest.array)}",
    );
    log(
      "map# Local: ${_values.map} ||| Store: ${await RCache.common.readMap(key: _RCacheKeyTest.map)}",
    );
    log(
      "double# Local: ${_values.doubleValue} ||| Store: ${await RCache.common.readDouble(key: _RCacheKeyTest.double)}",
    );

    await RCache.common.remove(key: _RCacheKeyTest.uint8List);
    log(
      "try remove ${_RCacheKeyTest.uint8List.rawValue} |||| Store: ${await RCache.common.readUint8List(key: _RCacheKeyTest.uint8List)}",
    );

    await RCache.common.clear();
    log(
      "try clear, check data ${_RCacheKeyTest.string.rawValue} |||| Store: ${await RCache.common.readString(key: _RCacheKeyTest.string)}",
    );
  }

  Future<void> _credentialsTest() async {
    log("Credentials Test =======================================");

    await RCache.credentials.saveUint8List(
      _values.uint8List,
      key: _RCacheKeyTest.uint8List,
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

    log(
      "uint8List# Local: ${_values.uint8List} ||| Store: ${await RCache.credentials.readUint8List(key: _RCacheKeyTest.uint8List)}",
    );
    log(
      "string# Local: ${_values.string} ||| Store: ${await RCache.credentials.readString(key: _RCacheKeyTest.string)}",
    );
    log(
      "bool# Local: ${_values.boolValue} ||| Store: ${await RCache.credentials.readBool(key: _RCacheKeyTest.bool)}",
    );
    log(
      "integer# Local: ${_values.intValue} ||| Store: ${await RCache.credentials.readInteger(key: _RCacheKeyTest.int)}",
    );
    log(
      "array# Local: ${_values.array} ||| Store: ${await RCache.credentials.readArray(key: _RCacheKeyTest.array)}",
    );
    log(
      "map# Local: ${_values.map} ||| Store: ${await RCache.credentials.readMap(key: _RCacheKeyTest.map)}",
    );
    log(
      "double# Local: ${_values.doubleValue} ||| Store: ${await RCache.credentials.readDouble(key: _RCacheKeyTest.double)}",
    );

    await RCache.credentials.remove(key: _RCacheKeyTest.uint8List);
    log(
      "try remove ${_RCacheKeyTest.uint8List.rawValue} |||| Store: ${await RCache.credentials.readUint8List(key: _RCacheKeyTest.uint8List)}",
    );

    await RCache.credentials.clear();
    log(
      "try clear, check data ${_RCacheKeyTest.string.rawValue} |||| Store: ${await RCache.credentials.readString(key: _RCacheKeyTest.string)}",
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running on'),
        ),
      ),
    );
  }
}

class _RCacheKeyTest {
  static RCacheKey get uint8List => RCacheKey("uint8List");

  static RCacheKey get string => RCacheKey("string");

  static RCacheKey get bool => RCacheKey("bool");

  static RCacheKey get int => RCacheKey("int");

  static RCacheKey get array => RCacheKey("array");

  static RCacheKey get map => RCacheKey("map");

  static RCacheKey get double => RCacheKey("double");
}

class _RCacheValueModelTest {
  final Uint8List uint8List;
  final String string;
  final bool boolValue;
  final int intValue;
  final List array;
  final Map<String, dynamic> map;
  final double doubleValue;

  _RCacheValueModelTest({
    required this.uint8List,
    required this.string,
    required this.boolValue,
    required this.intValue,
    required this.array,
    required this.map,
    required this.doubleValue,
  });
}

_RCacheValueModelTest _values = _RCacheValueModelTest(
  uint8List: Uint8List.fromList("RCache".codeUnits),
  string: "RCache",
  boolValue: false,
  intValue: 1,
  array: [1, "b", true],
  map: {"a": 1, "b": "c"},
  doubleValue: 12.123,
);
