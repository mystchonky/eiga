import '../../graphql/graphql_api.graphql.dart';

extension MediaFormatExtension on MediaFormat {
  String get name {
    switch (this) {
      case MediaFormat.tv:
        return "TV";
      case MediaFormat.tvShort:
        return "TV-SHORT";
      case MediaFormat.movie:
        return "MOVIE";
      case MediaFormat.special:
        return "SPECIAL";
      case MediaFormat.ova:
        return "OVA";
      case MediaFormat.ona:
        return "ONA";
      case MediaFormat.music:
        return "MUSIC";
      case MediaFormat.manga:
        return "MANGA";
      case MediaFormat.novel:
        return "NOVEL";
      case MediaFormat.oneShot:
        return "ONE-SHOT";
      case MediaFormat.artemisUnknown:
      default:
        return "UNKNOWN";
    }
  }
}
