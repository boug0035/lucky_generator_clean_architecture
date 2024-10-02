import 'dart:math';

import '../core/enviroment_helper.dart';

class LuckyGenerator {
  int generateLuckyNumber() {
    int min = EnvironmentHelper.getEnvValue('MIN', defaultValue: 10);

    int max = EnvironmentHelper.getEnvValue('MAX', defaultValue: 100);

    Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}
