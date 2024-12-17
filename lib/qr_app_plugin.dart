import 'qr_app_plugin_platform_interface.dart';

class QrAppPlugin {
  Future<String?> getPlatformVersion() {
    return QrAppPluginPlatform.instance.getPlatformVersion();
  }
}
