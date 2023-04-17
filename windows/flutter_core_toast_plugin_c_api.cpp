#include "include/flutter_core_toast/flutter_core_toast_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_core_toast_plugin.h"

void FlutterCoreToastPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_core_toast::FlutterCoreToastPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
