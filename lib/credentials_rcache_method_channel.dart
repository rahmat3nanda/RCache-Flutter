import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rcache_flutter/rcache_helper.dart';
import 'package:rcache_flutter/rcache_key.dart';
import 'package:rcache_flutter/rcache_method.dart';
import 'package:rcache_flutter/rcache_platform_interface.dart';
import 'package:rcache_flutter/rcaching.dart';

/// An implementation of [RCachePlatform] that uses method channels.
class CredentialsMethodChannelRCache extends RCachePlatform
    implements RCaching {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = MethodChannel(RCacheMethod.channel);

  @override
  Future<void> saveData({
    required Uint8List data,
    required RCacheKey key,
  }) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.data,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: data),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveString({
    required String string,
    required RCacheKey key,
  }) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.string,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: string),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveBool({required bool value, required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.bool,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: bool),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveInteger({required int value, required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.integer,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: value),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveArray({required List array, required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.array,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: array),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveDictionary({
    required Map<String, dynamic> dictionary,
    required RCacheKey key,
  }) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.dictionary,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: dictionary),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveDouble({
    required double value,
    required RCacheKey key,
  }) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.double,
        rArgs(type: RCacheMethod.key.credentials, key: key, value: value),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<Uint8List?> readData({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.data,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<String?> readString({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.string,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<bool?> readBool({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.bool,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<int?> readInteger({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.integer,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List?> readArray({required RCacheKey key}) async {
    try {
      List<dynamic>? value = await methodChannel.invokeMethod(
        RCacheMethod.key.read.array,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
      return value == null ? null : rAutoCastList(value);
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<Map<String, dynamic>?> readDictionary({required RCacheKey key}) async {
    try {
      Map<Object?, Object?>? value = await methodChannel.invokeMethod(
        RCacheMethod.key.read.dictionary,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
      return Future.value(
        value == null ? null : rAutoCastMap(value.cast<String, dynamic>()),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<double?> readDouble({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.double,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> remove({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.remove,
        rArgs(type: RCacheMethod.key.credentials, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> clear() async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.clear,
        rArgs(type: RCacheMethod.key.credentials),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }
}
