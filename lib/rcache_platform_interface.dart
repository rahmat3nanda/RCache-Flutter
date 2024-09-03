import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rcache_flutter/common_rcache_method_channel.dart';
import 'package:rcache_flutter/credentials_rcache_method_channel.dart';
import 'package:rcache_flutter/rcache_key.dart';

abstract class RCachePlatform extends PlatformInterface {
  /// Constructs a RCachePlatform.
  RCachePlatform() : super(token: _token);

  static final Object _token = Object();

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

  Future<void> saveData({required Uint8List data, required RCacheKey key});

  Future<void> saveString({required String string, required RCacheKey key});

  Future<void> saveBool({required bool value, required RCacheKey key});

  Future<void> saveInteger({required int value, required RCacheKey key});

  Future<void> saveArray(
      {required List<dynamic> array, required RCacheKey key});

  Future<void> saveDictionary({
    required Map<String, dynamic> dictionary,
    required RCacheKey key,
  });

  Future<void> saveDouble({required double value, required RCacheKey key});

  Future<Uint8List?> readData({required RCacheKey key});

  Future<String?> readString({required RCacheKey key});

  Future<bool?> readBool({required RCacheKey key});

  Future<int?> readInteger({required RCacheKey key});

  Future<List<dynamic>?> readArray({required RCacheKey key});

  Future<Map<String, dynamic>?> readDictionary({required RCacheKey key});

  Future<double?> readDouble({required RCacheKey key});

  Future<void> remove({required RCacheKey key});

  Future<void> clear();
}
