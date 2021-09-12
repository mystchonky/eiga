class MediaCardEntry {
  final int id;
  final String name;
  final String coverUrl;
  final String? relation;

  MediaCardEntry({
    required this.id,
    required this.name,
    required this.coverUrl,
    this.relation,
  });
}
