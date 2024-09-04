import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rcache_flutter/common_rcache_method_channel.dart';
import 'package:rcache_flutter/credentials_rcache_method_channel.dart';
import 'package:rcache_flutter/rcache_method.dart';

import 'rcache_key_test.dart';
import 'rcache_value_model_test.dart';

RCacheValueModelTest _values = RCacheValueModelTest(
  uint8List: Uint8List.fromList("RCache".codeUnits),
  string: "RCache",
  boolValue: false,
  intValue: 1,
  array: [1, "b", true],
  map: {"a": 1, "b": "c"},
  doubleValue: 12.123,
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  CommonMethodChannelRCache common = CommonMethodChannelRCache();
  CredentialsMethodChannelRCache credentials = CredentialsMethodChannelRCache();
  MethodChannel channel = MethodChannel(RCacheMethod.channel);

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        String method = methodCall.method;

        if (method == RCacheMethod.key.read.uint8List) {
          return _values.uint8List;
        }

        if (method == RCacheMethod.key.read.string) {
          return _values.string;
        }

        if (method == RCacheMethod.key.read.bool) {
          return _values.boolValue;
        }

        if (method == RCacheMethod.key.read.integer) {
          return _values.intValue;
        }

        if (method == RCacheMethod.key.read.array) {
          return _values.array;
        }

        if (method == RCacheMethod.key.read.map) {
          return _values.map;
        }

        if (method == RCacheMethod.key.read.double) {
          return _values.doubleValue;
        }

        return null;
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('Common Type', () async {
    expect(
      await common.readUint8List(key: RCacheKeyTest.uint8List),
      _values.uint8List,
    );
    expect(await common.readString(key: RCacheKeyTest.string), _values.string);
    expect(await common.readBool(key: RCacheKeyTest.bool), _values.boolValue);
    expect(await common.readInteger(key: RCacheKeyTest.int), _values.intValue);
    expect(await common.readArray(key: RCacheKeyTest.array), _values.array);
    expect(await common.readMap(key: RCacheKeyTest.map), _values.map);
    expect(
      await common.readDouble(key: RCacheKeyTest.double),
      _values.doubleValue,
    );
  });

  test('Credentials Type', () async {
    expect(
      await credentials.readUint8List(key: RCacheKeyTest.uint8List),
      _values.uint8List,
    );
    expect(
      await credentials.readString(key: RCacheKeyTest.string),
      _values.string,
    );
    expect(
        await credentials.readBool(key: RCacheKeyTest.bool), _values.boolValue);
    expect(
      await credentials.readInteger(key: RCacheKeyTest.int),
      _values.intValue,
    );
    expect(
      await credentials.readArray(key: RCacheKeyTest.array),
      _values.array,
    );
    expect(await credentials.readMap(key: RCacheKeyTest.map), _values.map);
    expect(
      await credentials.readDouble(key: RCacheKeyTest.double),
      _values.doubleValue,
    );
  });
}
