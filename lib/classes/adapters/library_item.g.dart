// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LibraryItemAdapter extends TypeAdapter<LibraryItem> {
  @override
  final int typeId = 1;

  @override
  LibraryItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LibraryItem(
      id: fields[0] as int,
      name: fields[1] as String,
      coverUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LibraryItem obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.coverUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LibraryItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
