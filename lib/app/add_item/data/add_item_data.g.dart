// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddItemAdapter extends TypeAdapter<AddItem> {
  @override
  final int typeId = 1;

  @override
  AddItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddItem(
      type: fields[0] as String,
      explaine: fields[1] as String,
      amount: fields[2] as String,
      how: fields[3] as String,
      addDate: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AddItem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.explaine)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.how)
      ..writeByte(4)
      ..write(obj.addDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
