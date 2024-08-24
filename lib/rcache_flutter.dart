
import 'rcache_flutter_platform_interface.dart';

class RcacheFlutter {
  Future<String?> getPlatformVersion() {
    return RcacheFlutterPlatform.instance.getPlatformVersion();
  }
}
