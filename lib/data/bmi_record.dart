import 'package:hive/hive.dart';

part 'bmi_record.g.dart';

@HiveType(typeId: 0)
class BmiRecord extends HiveObject {
  @HiveField(0)
  final DateTime date;

  @HiveField(1)
  final double weight;

  @HiveField(2)
  final double height;

  @HiveField(3)
  final double bmi;

  @HiveField(4)
  final bool isFemale;

  @HiveField(5)
  final int age;

  BmiRecord({
    required this.date,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.isFemale,
    required this.age,
  });
}
