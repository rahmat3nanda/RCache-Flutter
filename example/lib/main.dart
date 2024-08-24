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

    log(
      "data# Local: ${_values.data} ||| Store: ${await RCache.common.readData(key: _RCacheKeyTest.data)}",
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
      "dictionary# Local: ${_values.dictionary} ||| Store: ${await RCache.common.readDictionary(key: _RCacheKeyTest.dictionary)}",
    );
    log(
      "double# Local: ${_values.doubleValue} ||| Store: ${await RCache.common.readDouble(key: _RCacheKeyTest.double)}",
    );

    await RCache.common.remove(key: _RCacheKeyTest.data);
    log(
      "try remove ${_RCacheKeyTest.data.rawValue} |||| Store: ${await RCache.common.readData(key: _RCacheKeyTest.data)}",
    );

    await RCache.common.clear();
    log(
      "try clear, check data ${_RCacheKeyTest.string.rawValue} |||| Store: ${await RCache.common.readString(key: _RCacheKeyTest.string)}",
    );
  }

  Future<void> _credentialsTest() async {
    log("Credentials Test =======================================");

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

    log(
      "data# Local: ${_values.data} ||| Store: ${await RCache.credentials.readData(key: _RCacheKeyTest.data)}",
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
      "dictionary# Local: ${_values.dictionary} ||| Store: ${await RCache.credentials.readDictionary(key: _RCacheKeyTest.dictionary)}",
    );
    log(
      "double# Local: ${_values.doubleValue} ||| Store: ${await RCache.credentials.readDouble(key: _RCacheKeyTest.double)}",
    );

    await RCache.credentials.remove(key: _RCacheKeyTest.data);
    log(
      "try remove ${_RCacheKeyTest.data.rawValue} |||| Store: ${await RCache.credentials.readData(key: _RCacheKeyTest.data)}",
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
