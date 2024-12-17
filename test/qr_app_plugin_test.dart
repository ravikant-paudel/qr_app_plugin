import 'package:flutter_test/flutter_test.dart';
import 'package:qr_app_plugin/qr_app_plugin.dart';
import 'package:qr_app_plugin/qr_app_plugin_platform_interface.dart';
import 'package:qr_app_plugin/qr_app_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockQrAppPluginPlatform
    with MockPlatformInterfaceMixin
    implements QrAppPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final QrAppPluginPlatform initialPlatform = QrAppPluginPlatform.instance;

  test('$MethodChannelQrAppPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelQrAppPlugin>());
  });

  test('getPlatformVersion', () async {
    QrAppPlugin qrAppPlugin = QrAppPlugin();
    MockQrAppPluginPlatform fakePlatform = MockQrAppPluginPlatform();
    QrAppPluginPlatform.instance = fakePlatform;

    expect(await qrAppPlugin.getPlatformVersion(), '42');
  });
}
