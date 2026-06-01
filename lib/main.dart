import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm_bmi/data/database_service.dart';
import 'package:pcm_bmi/presentation/languages.dart';
import 'package:pcm_bmi/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final dbService = DatabaseService();
  await dbService.init();
  Get.put(dbService);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PCM BMI',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      locale: Get.deviceLocale,
    );
  }
}