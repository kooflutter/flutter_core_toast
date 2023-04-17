
import 'flutter_core_toast_platform_interface.dart';

class FlutterCoreToast {
  Future<String?> getPlatformVersion() {
    return FlutterCoreToastPlatform.instance.getPlatformVersion();
  }
}
