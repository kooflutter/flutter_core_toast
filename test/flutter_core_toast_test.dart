import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_toast/flutter_core_toast.dart';
import 'package:flutter_core_toast/flutter_core_toast_platform_interface.dart';
import 'package:flutter_core_toast/flutter_core_toast_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreToastPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreToastPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreToastPlatform initialPlatform = FlutterCoreToastPlatform.instance;

  test('$MethodChannelFlutterCoreToast is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreToast>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreToast flutterCoreToastPlugin = FlutterCoreToast();
    MockFlutterCoreToastPlatform fakePlatform = MockFlutterCoreToastPlatform();
    FlutterCoreToastPlatform.instance = fakePlatform;

    expect(await flutterCoreToastPlugin.getPlatformVersion(), '42');
  });
}
