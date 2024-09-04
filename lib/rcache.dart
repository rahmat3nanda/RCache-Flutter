import 'package:rcache_flutter/rcache_platform_interface.dart';
import 'package:rcache_flutter/rcaching.dart';

export 'package:rcache_flutter/rcache_key.dart';

/// This is a main class for managing cache with RCache
class RCache {
  /// Get a RCaching instance with common level. Used to store RCache for regular data.
  ///
  /// @return RCaching
  ///
  /// @note This instance is an instance of CommonMethodChannelRCache.
  static RCaching common = RCachePlatform.common;

  /// Get a RCaching instance with credentials level. Used to store RCache for credentials data.
  ///
  /// @return RCaching
  ///
  /// @note This instance is an instance of KeychainRCache.
  static RCaching credentials = RCachePlatform.credentials;

  /// Method to delete all data for common and credential levels stored via RCache/RCaching.

  static void clear() async {
    common.clear();
    credentials.clear();
  }
}
