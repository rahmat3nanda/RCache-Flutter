import 'package:rcache_flutter/rcache_platform_interface.dart';
import 'package:rcache_flutter/rcaching.dart';

export 'package:rcache_flutter/rcache_key.dart';

class RCache {
  static RCaching common = RCachePlatform.common as RCaching;
  static RCaching credentials = RCachePlatform.credentials as RCaching;

  static void clear() async {
    common.clear();
    credentials.clear();
  }
}
