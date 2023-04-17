#ifndef FLUTTER_PLUGIN_FLUTTER_CORE_TOAST_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_CORE_TOAST_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_core_toast {

class FlutterCoreToastPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterCoreToastPlugin();

  virtual ~FlutterCoreToastPlugin();

  // Disallow copy and assign.
  FlutterCoreToastPlugin(const FlutterCoreToastPlugin&) = delete;
  FlutterCoreToastPlugin& operator=(const FlutterCoreToastPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_core_toast

#endif  // FLUTTER_PLUGIN_FLUTTER_CORE_TOAST_PLUGIN_H_
