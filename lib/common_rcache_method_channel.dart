import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rcache_flutter/rcache_helper.dart';
import 'package:rcache_flutter/rcache_key.dart';
import 'package:rcache_flutter/rcache_method.dart';
import 'package:rcache_flutter/rcache_platform_interface.dart';

/// An implementation of [RCachePlatform] that uses method channels for regular data.
class CommonMethodChannelRCache extends RCachePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = MethodChannel(RCacheMethod.channel);

  /// Method for storing Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveUint8List(Uint8List(10), key: RCacheKey("data"));
  /// ```
  @override
  Future<void> saveUint8List(Uint8List data, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.uint8List,
        rArgs(type: RCacheMethod.key.common, key: key, value: data),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveString("data string", key: RCacheKey("string"));
  /// ```
  @override
  Future<void> saveString(String string, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.string,
        rArgs(type: RCacheMethod.key.common, key: key, value: string),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveBool(true, key: RCacheKey("bool"));
  /// ```
  @override
  Future<void> saveBool(bool value, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.bool,
        rArgs(type: RCacheMethod.key.common, key: key, value: value),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveInteger(101, key: RCacheKey("integer"));
  /// ```
  @override
  Future<void> saveInteger(int value, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.integer,
        rArgs(type: RCacheMethod.key.common, key: key, value: value),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveArray([101, "string", true], key: RCacheKey("array"));
  /// ```
  @override
  Future<void> saveArray(List array, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.array,
        rArgs(type: RCacheMethod.key.common, key: key, value: array),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveMap({"bool": true, "integer": 101}, key: RCacheKey("map"));
  /// ```
  @override
  Future<void> saveMap(
    Map<String, dynamic> map, {
    required RCacheKey key,
  }) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.map,
        rArgs(type: RCacheMethod.key.common, key: key, value: map),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for storing a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.saveDouble(2.0, key: RCacheKey("double"));
  /// ```
  @override
  Future<void> saveDouble(double value, {required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.save.double,
        rArgs(type: RCacheMethod.key.common, key: key, value: value),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readUint8List(key: RCacheKey("data"));
  /// ```
  @override
  Future<Uint8List?> readUint8List({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.uint8List,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readString(key: RCacheKey("string"));
  /// ```
  @override
  Future<String?> readString({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.string,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readBool(key: RCacheKey("bool"));
  /// ```
  @override
  Future<bool?> readBool({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.bool,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readInteger(key: RCacheKey("integer"));
  /// ```
  @override
  Future<int?> readInteger({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.integer,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readArray(key: RCacheKey("array"));
  /// ```
  @override
  Future<List?> readArray({required RCacheKey key}) async {
    try {
      List? value = await methodChannel.invokeMethod(
        RCacheMethod.key.read.array,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
      return value == null ? null : rAutoCastList(value);
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readMap(key: RCacheKey("map"));
  /// ```
  @override
  Future<Map<String, dynamic>?> readMap({required RCacheKey key}) async {
    try {
      Map<Object?, Object?>? value = await methodChannel.invokeMethod(
        RCacheMethod.key.read.map,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
      return Future.value(
        value == null ? null : rAutoCastMap(value.cast<String, dynamic>()),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for getting a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.readDouble(key: RCacheKey("double"));
  /// ```
  @override
  Future<double?> readDouble({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.read.double,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for deleting data stored with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCache.common.remove(key: RCacheKey("myKey"));
  /// ```
  @override
  Future<void> remove({required RCacheKey key}) async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.remove,
        rArgs(type: RCacheMethod.key.common, key: key),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  /// Method for deleting all data stored via Caching.
  ///
  /// Example:
  /// ```
  /// // RCache.common.clear();
  /// ```
  @override
  Future<void> clear() async {
    try {
      return await methodChannel.invokeMethod(
        RCacheMethod.key.clear,
        rArgs(type: RCacheMethod.key.common),
      );
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }
}
