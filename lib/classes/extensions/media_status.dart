import 'package:eiga/graphql/graphql_api.graphql.dart';

extension MediaStatusExtension on MediaStatus {
  String get name {
    switch (this) {
      case MediaStatus.cancelled:
        return "CANCELLED";
      case MediaStatus.finished:
        return "FINISHED";
      case MediaStatus.hiatus:
        return "HIATUS";
      case MediaStatus.notYetReleased:
        return "NOT YET RELEASED";
      case MediaStatus.releasing:
        return "RELEASING";
      case MediaStatus.artemisUnknown:
      default:
        return "UNKNOWN";
    }
  }
}
