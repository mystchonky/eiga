import '../../graphql/graphql_api.graphql.dart';

extension MediaRelationExtension on MediaRelation {
  String get name {
    switch (this) {
      case MediaRelation.adaptation:
        return "ADAPTATION";
      case MediaRelation.prequel:
        return "PREQUEL";
      case MediaRelation.sequel:
        return "SEQUEL";
      case MediaRelation.parent:
        return "PARENT";
      case MediaRelation.sideStory:
        return "SIDE STORY";
      case MediaRelation.character:
        return "CHARACTER";
      case MediaRelation.summary:
        return "SUMMARY";
      case MediaRelation.alternative:
        return "ALTERNATIVE";
      case MediaRelation.spinOff:
        return "SPINOFF";
      case MediaRelation.other:
        return "OTHER";
      case MediaRelation.source:
        return "SOURCE";
      case MediaRelation.compilation:
        return "COMPILATION";
      case MediaRelation.contains:
        return "CONTAINS";
      case MediaRelation.artemisUnknown:
      default:
        return "UNKNOWN";
    }
  }
}
