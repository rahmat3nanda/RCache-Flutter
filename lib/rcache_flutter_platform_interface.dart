import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rcache_flutter_method_channel.dart';

abstract class RcacheFlutterPlatform extends PlatformInterface {
  /// Constructs a RcacheFlutterPlatform.
  RcacheFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static RcacheFlutterPlatform _instance = MethodChannelRcacheFlutter();

  /// The default instance of [RcacheFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelRcacheFlutter].
  static RcacheFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RcacheFlutterPlatform] when
  /// they register themselves.
  static set instance(RcacheFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
