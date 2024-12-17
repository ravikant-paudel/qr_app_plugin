import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'qr_app_plugin_platform_interface.dart';

/// An implementation of [QrAppPluginPlatform] that uses method channels.
class MethodChannelQrAppPlugin extends QrAppPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('qr_app_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
