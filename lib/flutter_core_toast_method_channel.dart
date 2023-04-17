import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_core_toast_platform_interface.dart';

/// An implementation of [FlutterCoreToastPlatform] that uses method channels.
class MethodChannelFlutterCoreToast extends FlutterCoreToastPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_core_toast');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
