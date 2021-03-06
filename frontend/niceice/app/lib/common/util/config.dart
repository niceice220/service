import 'package:yaml/yaml.dart';
import 'package:flutter/services.dart' as s;

class Configs {
  Configs._();
  YamlMap _configMap;
  YamlMap _errorPromptConfigMap;
  static final _instance = Configs._();
  factory Configs.getInstance() => _instance;

  loadConfigs() async {
    final configs = await s.rootBundle.loadString('assets/configs/config.yaml');
    final errorPromptConfigs =
        await s.rootBundle.loadString('assets/configs/error-prompt.yaml');
    _configMap = loadYaml(configs);
    _errorPromptConfigMap = loadYaml(errorPromptConfigs);
  }

  String get appName => _configMap['app']['name'];
  String get serverUrl => _configMap['app']['server_url'];
  String get homeBottomNavigationName =>
      _configMap['app']['homeBottomNavigationName'];
  String get mineBottomNavigationName =>
      _configMap['app']['mineBottomNavigationName'];
  double get horizontalPadding => _configMap['app']['horizontalPadding'];
  double get desktopLeastWidth => _configMap['app']['desktopLeastWidth'];
  String get userNameLabel => _configMap['app']['userNameLabel'];
  String get emailLabel => _configMap['app']['emailLabel'];
  String get emailAuthCodeLabel => _configMap['app']['emailAuthCodeLabel'];
  String get register => _configMap['app']['register'];
  String get login => _configMap['app']['login'];
  int get failTimesToShowDisconnect =>
      _configMap['app']['failTimesToShowDisconnect'];

  String get tryReconnectPrompt =>
      _errorPromptConfigMap['net']['try-reconnect'];
}
