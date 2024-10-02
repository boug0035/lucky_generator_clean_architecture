import 'dart:io';

class EnvironmentHelper {
  static int getEnvValue(String key, {int defaultValue = 0}) {
    String? value = Platform.environment[key];
    return int.tryParse(value ?? '') ?? defaultValue;
  }
}
