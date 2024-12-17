import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'qr_app_plugin_method_channel.dart';

abstract class QrAppPluginPlatform extends PlatformInterface {
  /// Constructs a QrAppPluginPlatform.
  QrAppPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static QrAppPluginPlatform _instance = MethodChannelQrAppPlugin();

  /// The default instance of [QrAppPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelQrAppPlugin].
  static QrAppPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QrAppPluginPlatform] when
  /// they register themselves.
  static set instance(QrAppPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
