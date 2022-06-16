import 'package:eiga/graphql/graphql_api.graphql.dart';

extension MediaTypeExtension on MediaType {
  String get name {
    switch (this) {
      case MediaType.anime:
        return "Anime";
      case MediaType.manga:
        return "Manga";
      default:
        return "Unknown";
    }
  }
}
