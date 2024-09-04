import 'package:rcache_flutter/rcache_key.dart';

class RCacheKeyTest {
  static RCacheKey get uint8List => RCacheKey("uint8List");

  static RCacheKey get string => RCacheKey("string");

  static RCacheKey get bool => RCacheKey("bool");

  static RCacheKey get int => RCacheKey("int");

  static RCacheKey get array => RCacheKey("array");

  static RCacheKey get map => RCacheKey("map");

  static RCacheKey get double => RCacheKey("double");
}
