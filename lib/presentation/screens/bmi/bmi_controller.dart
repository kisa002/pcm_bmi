import 'dart:ui';

import 'package:get/get.dart';
import 'package:pcm_bmi/data/bmi_record.dart';
import 'package:pcm_bmi/data/bmi_result.dart';
import 'package:pcm_bmi/data/database_service.dart';

class BmiController extends GetxController {
  final age = 20.obs;
  final weight = 50.obs;
  final height = 175.0.obs;
  final isFemale = true.obs;

  final minHeight = 50.0;
  final maxHeight = 220.0;

  final history = <BmiRecord>[].obs;
  final DatabaseService _dbService = Get.find();

  @override
  void onInit() {
    super.onInit();
    loadHistory();
  }

  void loadHistory() {
    history.assignAll(_dbService.getAllRecords());
    // Sort by date descending
    history.sort((a, b) => b.date.compareTo(a.date));
  }

  void saveRecord() async {
    final bmiResult = calculateBmi();
    final record = BmiRecord(
      date: DateTime.now(),
      weight: weight.value.toDouble(),
      height: height.value,
      bmi: bmiResult.bmi,
      isFemale: isFemale.value,
      age: age.value,
    );
    await _dbService.addRecord(record);
    loadHistory();
    Get.snackbar('Success'.tr, 'BMI record saved successfully'.tr);
  }

  void deleteRecord(int index) async {
    // Note: index in the sorted list might not match the DB index if we don't handle it carefully.
    // However, Hive's deleteAt uses the index in the box.
    // For simplicity, let's find the actual object and delete it.
    final record = history[index];
    await record.delete();
    loadHistory();
  }

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
