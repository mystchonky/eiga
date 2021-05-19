import 'package:hive/hive.dart';

part 'library_item.g.dart';

@HiveType(typeId: 1)
class LibraryItem {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String coverUrl;

  LibraryItem({required this.id, required this.name, required this.coverUrl});
}
