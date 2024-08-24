import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rcache_flutter_platform_interface.dart';

/// An implementation of [RcacheFlutterPlatform] that uses method channels.
class MethodChannelRcacheFlutter extends RcacheFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rcache_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
