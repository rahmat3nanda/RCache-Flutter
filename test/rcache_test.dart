import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rcache_flutter/common_rcache_method_channel.dart';
import 'package:rcache_flutter/credentials_rcache_method_channel.dart';
import 'package:rcache_flutter/rcache.dart';
import 'package:rcache_flutter/rcache_platform_interface.dart';
import 'package:rcache_flutter/rcaching.dart';

import 'rcache_key_test.dart';
import 'rcache_value_model_test.dart';

RCacheValueModelTest _values = RCacheValueModelTest(
  data: Uint8List.fromList("RCache".codeUnits),
  string: "RCache",
  boolValue: false,
  intValue: 1,
  array: [1, "b", true],
  dictionary: {"a": 1, "b": "c"},
  doubleValue: 12.123,
);

class MockRCachePlatform
    with MockPlatformInterfaceMixin
    implements RCachePlatform, RCaching {
  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<List?> readArray({required RCacheKey key}) {
    return Future.value(_values.array);
  }

  @override
  Future<bool?> readBool({required RCacheKey key}) {
    return Future.value(_values.boolValue);
  }

  @override
  Future<Uint8List?> readData({required RCacheKey key}) {
    return Future.value(_values.data);
  }

  @override
  Future<Map<String, dynamic>?> readDictionary({required RCacheKey key}) {
    return Future.value(_values.dictionary);
  }

  @override
  Future<double?> readDouble({required RCacheKey key}) {
    return Future.value(_values.doubleValue);
  }

  @override
  Future<int?> readInteger({required RCacheKey key}) {
    return Future.value(_values.intValue);
  }

  @override
  Future<String?> readString({required RCacheKey key}) {
    return Future.value(_values.string);
  }

  @override
  Future<void> remove({required RCacheKey key}) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<void> saveArray({required List array, required RCacheKey key}) {
    // TODO: implement saveArray
    throw UnimplementedError();
  }

  @override
  Future<void> saveBool({required bool value, required RCacheKey key}) {
    // TODO: implement saveBool
    throw UnimplementedError();
  }

  @override
  Future<void> saveData({required Uint8List data, required RCacheKey key}) {
    // TODO: implement saveData
    throw UnimplementedError();
  }

  @override
  Future<void> saveDictionary(
      {required Map<String, dynamic> dictionary, required RCacheKey key}) {
    // TODO: implement saveDictionary
    throw UnimplementedError();
  }

  @override
  Future<void> saveDouble({required double value, required RCacheKey key}) {
    // TODO: implement saveDouble
    throw UnimplementedError();
  }

  @override
  Future<void> saveInteger({required int value, required RCacheKey key}) {
    // TODO: implement saveInteger
    throw UnimplementedError();
  }

  @override
  Future<void> saveString({required String string, required RCacheKey key}) {
    // TODO: implement saveString
    throw UnimplementedError();
  }
}

void main() {
  final RCachePlatform common = RCachePlatform.common;
  final RCachePlatform credentials = RCachePlatform.credentials;

  test('$CommonMethodChannelRCache is the common instance', () {
    expect(common, isInstanceOf<CommonMethodChannelRCache>());
  });

  test('$CredentialsMethodChannelRCache is the credentials instance', () {
    expect(credentials, isInstanceOf<CredentialsMethodChannelRCache>());
  });

  test('Common Type', () async {
    MockRCachePlatform fakePlatform = MockRCachePlatform();
    RCachePlatform.common = fakePlatform;

    expect(
      await RCache.common.readData(key: RCacheKeyTest.data),
      _values.data,
    );
    expect(
      await RCache.common.readString(key: RCacheKeyTest.string),
      _values.string,
    );
    expect(
      await RCache.common.readBool(key: RCacheKeyTest.bool),
      _values.boolValue,
    );
    expect(
      await RCache.common.readInteger(key: RCacheKeyTest.int),
      _values.intValue,
    );
    expect(
      await RCache.common.readArray(key: RCacheKeyTest.array),
      _values.array,
    );
    expect(
      await RCache.common.readDictionary(key: RCacheKeyTest.dictionary),
      _values.dictionary,
    );
    expect(
      await RCache.common.readDouble(key: RCacheKeyTest.double),
      _values.doubleValue,
    );
  });

  test('Credentials Type', () async {
    MockRCachePlatform fakePlatform = MockRCachePlatform();
    RCachePlatform.credentials = fakePlatform;

    expect(
      await RCache.credentials.readData(key: RCacheKeyTest.data),
      _values.data,
    );
    expect(
      await RCache.credentials.readString(key: RCacheKeyTest.string),
      _values.string,
    );
    expect(
      await RCache.credentials.readBool(key: RCacheKeyTest.bool),
      _values.boolValue,
    );
    expect(
      await RCache.credentials.readInteger(key: RCacheKeyTest.int),
      _values.intValue,
    );
    expect(
      await RCache.credentials.readArray(key: RCacheKeyTest.array),
      _values.array,
    );
    expect(
      await RCache.credentials.readDictionary(key: RCacheKeyTest.dictionary),
      _values.dictionary,
    );
    expect(
      await RCache.credentials.readDouble(key: RCacheKeyTest.double),
      _values.doubleValue,
    );
  });
}
