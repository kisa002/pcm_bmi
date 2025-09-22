import 'dart:ui';

import 'package:get/get.dart';
import 'package:pcm_bmi/data/bmi_result.dart';

class BmiController extends GetxController {
  final age = 20.obs;
  final weight = 50.obs;
  final height = 175.0.obs;
  final isFemale = true.obs;

  final minHeight = 50.0;
  final maxHeight = 220.0;

  void increaseAge() => age.value++;

  void decreaseAge() {
    if (age.value > 0) {
      age.value--;
    }
  }

  void increaseWeight() => weight.value++;

  void decreaseWeight() {
    if (weight.value > 0) {
      weight.value--;
    }
  }

  void setHeight(double value) => height.value = value;

  void setIsFemale(bool value) => isFemale.value = value;

  void changeLanguage() {
    if (Get.locale?.languageCode == 'ko') {
      Get.updateLocale(Locale('en', 'US'));
    } else {
      Get.updateLocale(Locale('ko', 'KR'));
    }
  }

  BmiResult calculateBmi() {
    final heightInMeter = height.value / 100;
    final bmi = (weight.value / (heightInMeter * heightInMeter)).toPrecision(2);

    return BmiResult(bmi);
  }
}
