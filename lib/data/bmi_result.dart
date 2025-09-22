import 'package:get/get.dart';

class BmiResult {
  final double bmi;

  BmiResult(this.bmi);

  String getResult() {
    return bmi < 18.5
        ? 'Underweight'.tr
        : bmi < 23
            ? 'Normal'.tr
            : bmi < 25
                ? 'Pre-Obesity Stage'.tr
                : bmi < 30
                    ? 'Level 1 Obesity'.tr
                    : bmi < 35
                        ? 'Level 2 Obesity'.tr
                        : 'Level 3 Obesity (High Obesity)'.tr;
  }
}
