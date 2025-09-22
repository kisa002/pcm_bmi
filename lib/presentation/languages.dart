import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': {
          'greeting': '안녕하세요',
          'Age': '나이',
          'Weight (KG)': '몸무게 (KG)',
          'Height (CM)': '키 (CM)',
          'Gender': '성별',
          'Male': '남성',
          'Female': '여성',
          'Calculate BMI': 'BMI 계산하기',
          'BMI Results': 'BMI 결과',
          'Underweight': '저체중',
          'Normal': '정상',
          'Pre-Obesity Stage': '비만전단계',
          'Level 1 Obesity': '1단계 비만',
          'Level 2 Obesity': '2단계 비만',
          'Level 3 Obesity': '3단계 비만(고도비만)',
        },
        'en_US': {
          'greeting': 'Hello',
          'Age': 'Age',
          'Weight (KG)': 'Weight (KG)',
          'Height (CM)': 'Height (CM)',
          'Gender': 'Gender',
          'Male': 'Male',
          'Female': 'Female',
          'Calculate BMI': 'Calculate BMI',
          'BMI Results': 'BMI Results',
          'Underweight': 'Underweight',
          'Normal': 'Normal',
          'Pre-Obesity Stage': 'Pre-Obesity Stage',
          'Level 1 Obesity': 'Level 1 Obesity',
          'Level 2 Obesity': 'Level 2 Obesity',
          'Level 3 Obesity (High Obesity)': 'Level 3 Obesity (High Obesity)',
        },
      };
}
