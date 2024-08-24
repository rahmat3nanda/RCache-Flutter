import 'dart:typed_data';

import 'package:rcache_flutter/rcache_key.dart';

abstract class RCaching {
  /// Method for storing data with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveData(data: data, key: RCacheKey("data"));
  /// ```
  Future<void> saveData({required Uint8List data, required RCacheKey key});

  /// Method for storing a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveString(string: "data string", key: RCacheKey("string"));
  /// ```
  Future<void> saveString({required String string, required RCacheKey key});

  /// Method for storing a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveBool(value: true, key: RCacheKey("bool"));
  /// ```
  Future<void> saveBool({required bool value, required RCacheKey key});

  /// Method for storing an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveInteger(value: 101, key: RCacheKey("integer"));
  /// ```
  Future<void> saveInteger({required int value, required RCacheKey key});

  /// Method for storing an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveArray(array: [101, "string", true], key: RCacheKey("array"));
  /// ```
  Future<void> saveArray(
      {required List<dynamic> array, required RCacheKey key});

  /// Method for storing a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveDictionary(dictionary: {"bool": true, "integer": 101}, key: RCacheKey("dictionary"));
  /// ```
  Future<void> saveDictionary({
    required Map<String, dynamic> dictionary,
    required RCacheKey key,
  });

  /// Method for storing a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveDouble(value: 2.0, key: RCacheKey("double"));
  /// ```
  Future<void> saveDouble({required double value, required RCacheKey key});

  /// Method for getting data with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readData(key: RCacheKey("data"));
  /// ```
  Future<Uint8List?> readData({required RCacheKey key});

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
  Future<List<dynamic>?> readArray({required RCacheKey key});

  /// Method for getting a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readDictionary(key: RCacheKey("dictionary"));
  /// ```
  Future<Map<String, dynamic>?> readDictionary({required RCacheKey key});

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
  /// // RCaching.instance.remove(key: RCacheKey("dictionary"));
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
