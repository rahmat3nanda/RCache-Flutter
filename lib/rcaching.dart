import 'dart:typed_data';

import 'package:rcache_flutter/rcache_key.dart';

/// Interface for RCache.
abstract class RCaching {
  /// Method for storing Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveUint8List(Uint8List(10), key: RCacheKey("data"));
  /// ```
  Future<void> saveUint8List(Uint8List data, {required RCacheKey key});

  /// Method for storing a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveString("data string", key: RCacheKey("string"));
  /// ```
  Future<void> saveString(String string, {required RCacheKey key});

  /// Method for storing a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveBool(true, key: RCacheKey("bool"));
  /// ```
  Future<void> saveBool(bool value, {required RCacheKey key});

  /// Method for storing an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveInteger(101, key: RCacheKey("integer"));
  /// ```
  Future<void> saveInteger(int value, {required RCacheKey key});

  /// Method for storing an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveArray([101, "string", true], key: RCacheKey("array"));
  /// ```
  Future<void> saveArray<T>(List<T> array, {required RCacheKey key});

  /// Method for storing a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveMap({"bool": true, "integer": 101}, key: RCacheKey("map"));
  /// ```
  Future<void> saveMap<T>(Map<String, T> map, {required RCacheKey key});

  /// Method for storing a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveDouble(2.0, key: RCacheKey("double"));
  /// ```
  Future<void> saveDouble(double value, {required RCacheKey key});

  /// Method for getting Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readUint8List(key: RCacheKey("data"));
  /// ```
  Future<Uint8List?> readUint8List({required RCacheKey key});

  /// Method for getting a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readString(key: RCacheKey("string"));
  /// ```
  Future<String?> readString({required RCacheKey key});

  /// Method for getting a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readBool(key: RCacheKey("bool"));
  /// ```
  Future<bool?> readBool({required RCacheKey key});

  /// Method for getting an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readInteger(key: RCacheKey("integer"));
  /// ```
  Future<int?> readInteger({required RCacheKey key});

  /// Method for getting an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readArray(key: RCacheKey("array"));
  /// ```
  Future<List<T>?> readArray<T>({required RCacheKey key});

  /// Method for getting a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readMap(key: RCacheKey("map"));
  /// ```
  Future<Map<String, dynamic>?> readMap({required RCacheKey key});

  /// Method for getting a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readDouble(key: RCacheKey("double"));
  /// ```
  Future<double?> readDouble({required RCacheKey key});

  /// Method for deleting data stored with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.remove(key: RCacheKey("myKey"));
  /// ```
  Future<void> remove({required RCacheKey key});

  /// Method for deleting all data stored via Caching.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.clear();
  /// ```
  Future<void> clear();
}
