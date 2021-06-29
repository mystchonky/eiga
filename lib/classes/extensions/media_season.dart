import '../../graphql/graphql_api.graphql.dart';

extension MediaSeasonExtension on MediaSeason {
  String get name {
    switch (this) {
      case MediaSeason.fall:
        return "Fall";
      case MediaSeason.spring:
        return "Spring";
      case MediaSeason.summer:
        return "Summer";
      case MediaSeason.winter:
        return "Winter";
      default:
        return "Unknown";
    }
  }
}
