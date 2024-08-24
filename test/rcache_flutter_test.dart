import 'package:flutter_test/flutter_test.dart';
import 'package:rcache_flutter/rcache_flutter.dart';
import 'package:rcache_flutter/rcache_flutter_platform_interface.dart';
import 'package:rcache_flutter/rcache_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRcacheFlutterPlatform
    with MockPlatformInterfaceMixin
    implements RcacheFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RcacheFlutterPlatform initialPlatform = RcacheFlutterPlatform.instance;

  test('$MethodChannelRcacheFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRcacheFlutter>());
  });

  test('getPlatformVersion', () async {
    RcacheFlutter rcacheFlutterPlugin = RcacheFlutter();
    MockRcacheFlutterPlatform fakePlatform = MockRcacheFlutterPlatform();
    RcacheFlutterPlatform.instance = fakePlatform;

    expect(await rcacheFlutterPlugin.getPlatformVersion(), '42');
  });
}
