import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rcache_flutter/common_rcache_method_channel.dart';
import 'package:rcache_flutter/credentials_rcache_method_channel.dart';
import 'package:rcache_flutter/rcache_key.dart';
import 'package:rcache_flutter/rcaching.dart';

/// Interface for Platform RCache
abstract class RCachePlatform extends PlatformInterface implements RCaching {
  /// Constructs a RCachePlatform.
  RCachePlatform() : super(token: _token);

  /// Local Object
  static final Object _token = Object();

  /// Local common
  static RCachePlatform _common = CommonMethodChannelRCache();

  /// The default instance of [RCachePlatform] to use.
  ///
  /// Defaults to [MethodChannelRCache].
  static RCachePlatform get common => _common;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RCachePlatform] when
  /// they register themselves.
  static set common(RCachePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _common = instance;
  }

  /// Local credentials
  static RCachePlatform _credentials = CredentialsMethodChannelRCache();

  /// The default instance of [RCachePlatform] to use.
  ///
  /// Defaults to [MethodChannelRCache].
  static RCachePlatform get credentials => _credentials;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RCachePlatform] when
  /// they register themselves.
  static set credentials(RCachePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _credentials = instance;
  }

  /// Method for storing Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveUint8List(Uint8List(10), key: RCacheKey("data"));
  /// ```
  @override
  Future<void> saveUint8List(Uint8List data, {required RCacheKey key});

  /// Method for storing a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveString("data string", key: RCacheKey("string"));
  /// ```
  @override
  Future<void> saveString(String string, {required RCacheKey key});

  /// Method for storing a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveBool(true, key: RCacheKey("bool"));
  /// ```
  @override
  Future<void> saveBool(bool value, {required RCacheKey key});

  /// Method for storing an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveInteger(101, key: RCacheKey("integer"));
  /// ```
  @override
  Future<void> saveInteger(int value, {required RCacheKey key});

  /// Method for storing an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveArray([101, "string", true], key: RCacheKey("array"));
  /// ```
  @override
  Future<void> saveArray<T>(List<T> array, {required RCacheKey key});

  /// Method for storing a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveMap({"bool": true, "integer": 101}, key: RCacheKey("map"));
  /// ```
  @override
  Future<void> saveMap<T>(Map<String, T> map, {required RCacheKey key});

  /// Method for storing a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.saveDouble(2.0, key: RCacheKey("double"));
  /// ```
  @override
  Future<void> saveDouble(double value, {required RCacheKey key});

  /// Method for getting Uint8List with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readUint8List(key: RCacheKey("data"));
  /// ```
  @override
  Future<Uint8List?> readUint8List({required RCacheKey key});

  /// Method for getting a String with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readString(key: RCacheKey("string"));
  /// ```
  @override
  Future<String?> readString({required RCacheKey key});

  /// Method for getting a Boolean with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readBool(key: RCacheKey("bool"));
  /// ```
  @override
  Future<bool?> readBool({required RCacheKey key});

  /// Method for getting an Integer with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readInteger(key: RCacheKey("integer"));
  /// ```
  @override
  Future<int?> readInteger({required RCacheKey key});

  /// Method for getting an Array with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readArray(key: RCacheKey("array"));
  /// ```
  @override
  Future<List<T>?> readArray<T>({required RCacheKey key});

  /// Method for getting a Map with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readMap(key: RCacheKey("map"));
  /// ```
  @override
  Future<Map<String, dynamic>?> readMap({required RCacheKey key});

  /// Method for getting a Double with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.readDouble(key: RCacheKey("double"));
  /// ```
  @override
  Future<double?> readDouble({required RCacheKey key});

  /// Method for deleting data stored with a defined key.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.remove(key: RCacheKey("myKey"));
  /// ```
  @override
  Future<void> remove({required RCacheKey key});

  /// Method for deleting all data stored via Caching.
  ///
  /// Example:
  /// ```
  /// // RCaching.instance.clear();
  /// ```
  @override
  Future<void> clear();
}
