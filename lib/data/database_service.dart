import 'package:hive_flutter/hive_flutter.dart';
import 'package:pcm_bmi/data/bmi_record.dart';

class DatabaseService {
  static const String _boxName = 'bmi_records';

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(BmiRecordAdapter());
    await Hive.openBox<BmiRecord>(_boxName);
  }

  Box<BmiRecord> get _box => Hive.box<BmiRecord>(_boxName);

  Future<void> addRecord(BmiRecord record) async {
    await _box.add(record);
  }

  List<BmiRecord> getAllRecords() {
    return _box.values.toList().cast<BmiRecord>();
  }

  Future<void> deleteRecord(int index) async {
    await _box.deleteAt(index);
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}
