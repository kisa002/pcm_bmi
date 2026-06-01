// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BmiRecordAdapter extends TypeAdapter<BmiRecord> {
  @override
  final int typeId = 0;

  @override
  BmiRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BmiRecord(
      date: fields[0] as DateTime,
      weight: fields[1] as double,
      height: fields[2] as double,
      bmi: fields[3] as double,
      isFemale: fields[4] as bool,
      age: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BmiRecord obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.weight)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.bmi)
      ..writeByte(4)
      ..write(obj.isFemale)
      ..writeByte(5)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BmiRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
