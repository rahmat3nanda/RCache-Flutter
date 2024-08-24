import 'package:rcache_flutter/rcache_key.dart';

class RCacheKeyTest {
  static RCacheKey get data => RCacheKey("data");

  static RCacheKey get string => RCacheKey("string");

  static RCacheKey get bool => RCacheKey("bool");

  static RCacheKey get int => RCacheKey("int");

  static RCacheKey get array => RCacheKey("array");

  static RCacheKey get dictionary => RCacheKey("dictionary");

  static RCacheKey get double => RCacheKey("double");
}
