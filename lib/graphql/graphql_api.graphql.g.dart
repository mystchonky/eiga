// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTimePopularAnime$Query$Page$Media$MediaTitle
    _$AllTimePopularAnime$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularAnime$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$AllTimePopularAnime$Query$Page$Media$MediaTitleToJson(
        AllTimePopularAnime$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

AllTimePopularAnime$Query$Page$Media$MediaCoverImage
    _$AllTimePopularAnime$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularAnime$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$AllTimePopularAnime$Query$Page$Media$MediaCoverImageToJson(
            AllTimePopularAnime$Query$Page$Media$MediaCoverImage instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

AllTimePopularAnime$Query$Page$Media
    _$AllTimePopularAnime$Query$Page$MediaFromJson(Map<String, dynamic> json) {
  return AllTimePopularAnime$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : AllTimePopularAnime$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : AllTimePopularAnime$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularAnime$Query$Page$MediaToJson(
        AllTimePopularAnime$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MediaStatusEnumMap = {
  MediaStatus.finished: 'FINISHED',
  MediaStatus.releasing: 'RELEASING',
  MediaStatus.notYetReleased: 'NOT_YET_RELEASED',
  MediaStatus.cancelled: 'CANCELLED',
  MediaStatus.hiatus: 'HIATUS',
  MediaStatus.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

AllTimePopularAnime$Query$Page _$AllTimePopularAnime$Query$PageFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularAnime$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : AllTimePopularAnime$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AllTimePopularAnime$Query$PageToJson(
        AllTimePopularAnime$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

AllTimePopularAnime$Query _$AllTimePopularAnime$QueryFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularAnime$Query()
    ..page = json['Page'] == null
        ? null
        : AllTimePopularAnime$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularAnime$QueryToJson(
        AllTimePopularAnime$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

AllTimePopularManga$Query$Page$Media$MediaTitle
    _$AllTimePopularManga$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularManga$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$AllTimePopularManga$Query$Page$Media$MediaTitleToJson(
        AllTimePopularManga$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

AllTimePopularManga$Query$Page$Media$MediaCoverImage
    _$AllTimePopularManga$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularManga$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$AllTimePopularManga$Query$Page$Media$MediaCoverImageToJson(
            AllTimePopularManga$Query$Page$Media$MediaCoverImage instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

AllTimePopularManga$Query$Page$Media
    _$AllTimePopularManga$Query$Page$MediaFromJson(Map<String, dynamic> json) {
  return AllTimePopularManga$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : AllTimePopularManga$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : AllTimePopularManga$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularManga$Query$Page$MediaToJson(
        AllTimePopularManga$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

AllTimePopularManga$Query$Page _$AllTimePopularManga$Query$PageFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularManga$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : AllTimePopularManga$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AllTimePopularManga$Query$PageToJson(
        AllTimePopularManga$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

AllTimePopularManga$Query _$AllTimePopularManga$QueryFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularManga$Query()
    ..page = json['Page'] == null
        ? null
        : AllTimePopularManga$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularManga$QueryToJson(
        AllTimePopularManga$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

AllTimePopularManhwa$Query$Page$Media$MediaTitle
    _$AllTimePopularManhwa$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularManhwa$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$AllTimePopularManhwa$Query$Page$Media$MediaTitleToJson(
        AllTimePopularManhwa$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

AllTimePopularManhwa$Query$Page$Media$MediaCoverImage
    _$AllTimePopularManhwa$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return AllTimePopularManhwa$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$AllTimePopularManhwa$Query$Page$Media$MediaCoverImageToJson(
            AllTimePopularManhwa$Query$Page$Media$MediaCoverImage instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

AllTimePopularManhwa$Query$Page$Media
    _$AllTimePopularManhwa$Query$Page$MediaFromJson(Map<String, dynamic> json) {
  return AllTimePopularManhwa$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : AllTimePopularManhwa$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : AllTimePopularManhwa$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularManhwa$Query$Page$MediaToJson(
        AllTimePopularManhwa$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

AllTimePopularManhwa$Query$Page _$AllTimePopularManhwa$Query$PageFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularManhwa$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : AllTimePopularManhwa$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AllTimePopularManhwa$Query$PageToJson(
        AllTimePopularManhwa$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

AllTimePopularManhwa$Query _$AllTimePopularManhwa$QueryFromJson(
    Map<String, dynamic> json) {
  return AllTimePopularManhwa$Query()
    ..page = json['Page'] == null
        ? null
        : AllTimePopularManhwa$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllTimePopularManhwa$QueryToJson(
        AllTimePopularManhwa$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

MediaInfo$Query$Media$MediaTitle _$MediaInfo$Query$Media$MediaTitleFromJson(
    Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaTitle()
    ..english = json['english'] as String?
    ..romaji = json['romaji'] as String?
    ..native = json['native'] as String?;
}

Map<String, dynamic> _$MediaInfo$Query$Media$MediaTitleToJson(
        MediaInfo$Query$Media$MediaTitle instance) =>
    <String, dynamic>{
      'english': instance.english,
      'romaji': instance.romaji,
      'native': instance.native,
    };

MediaInfo$Query$Media$MediaCoverImage
    _$MediaInfo$Query$Media$MediaCoverImageFromJson(Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaCoverImage()
    ..large = json['large'] as String?
    ..color = json['color'] as String?;
}

Map<String, dynamic> _$MediaInfo$Query$Media$MediaCoverImageToJson(
        MediaInfo$Query$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
      'color': instance.color,
    };

MediaInfo$Query$Media$FuzzyDate _$MediaInfo$Query$Media$FuzzyDateFromJson(
    Map<String, dynamic> json) {
  return MediaInfo$Query$Media$FuzzyDate()
    ..year = json['year'] as int?
    ..month = json['month'] as int?
    ..day = json['day'] as int?;
}

Map<String, dynamic> _$MediaInfo$Query$Media$FuzzyDateToJson(
        MediaInfo$Query$Media$FuzzyDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

MediaInfo$Query$Media$StudioConnection$Studio
    _$MediaInfo$Query$Media$StudioConnection$StudioFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$StudioConnection$Studio()
    ..id = json['id'] as int
    ..name = json['name'] as String;
}

Map<String, dynamic> _$MediaInfo$Query$Media$StudioConnection$StudioToJson(
        MediaInfo$Query$Media$StudioConnection$Studio instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

MediaInfo$Query$Media$StudioConnection
    _$MediaInfo$Query$Media$StudioConnectionFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$StudioConnection()
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MediaInfo$Query$Media$StudioConnection$Studio.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MediaInfo$Query$Media$StudioConnectionToJson(
        MediaInfo$Query$Media$StudioConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes?.map((e) => e?.toJson()).toList(),
    };

MediaInfo$Query$Media$MediaTrailer _$MediaInfo$Query$Media$MediaTrailerFromJson(
    Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaTrailer()..site = json['site'] as String?;
}

Map<String, dynamic> _$MediaInfo$Query$Media$MediaTrailerToJson(
        MediaInfo$Query$Media$MediaTrailer instance) =>
    <String, dynamic>{
      'site': instance.site,
    };

MediaInfo$Query$Media$AiringSchedule
    _$MediaInfo$Query$Media$AiringScheduleFromJson(Map<String, dynamic> json) {
  return MediaInfo$Query$Media$AiringSchedule()
    ..id = json['id'] as int
    ..episode = json['episode'] as int
    ..airingAt = json['airingAt'] as int;
}

Map<String, dynamic> _$MediaInfo$Query$Media$AiringScheduleToJson(
        MediaInfo$Query$Media$AiringSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode': instance.episode,
      'airingAt': instance.airingAt,
    };

MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleToJson(
            MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle
                instance) =>
        <String, dynamic>{
          'userPreferred': instance.userPreferred,
        };

MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageToJson(
            MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
                instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

MediaInfo$Query$Media$MediaConnection$MediaEdge$Media
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$MediaFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaConnection$MediaEdge$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle
            .fromJson(json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
            .fromJson(json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$MediaConnection$MediaEdge$MediaToJson(
            MediaInfo$Query$Media$MediaConnection$MediaEdge$Media instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title?.toJson(),
          'coverImage': instance.coverImage?.toJson(),
        };

MediaInfo$Query$Media$MediaConnection$MediaEdge
    _$MediaInfo$Query$Media$MediaConnection$MediaEdgeFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaConnection$MediaEdge()
    ..relationType = _$enumDecodeNullable(
        _$MediaRelationEnumMap, json['relationType'],
        unknownValue: MediaRelation.artemisUnknown)
    ..node = json['node'] == null
        ? null
        : MediaInfo$Query$Media$MediaConnection$MediaEdge$Media.fromJson(
            json['node'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MediaInfo$Query$Media$MediaConnection$MediaEdgeToJson(
        MediaInfo$Query$Media$MediaConnection$MediaEdge instance) =>
    <String, dynamic>{
      'relationType': _$MediaRelationEnumMap[instance.relationType],
      'node': instance.node?.toJson(),
    };

const _$MediaRelationEnumMap = {
  MediaRelation.adaptation: 'ADAPTATION',
  MediaRelation.prequel: 'PREQUEL',
  MediaRelation.sequel: 'SEQUEL',
  MediaRelation.parent: 'PARENT',
  MediaRelation.sideStory: 'SIDE_STORY',
  MediaRelation.character: 'CHARACTER',
  MediaRelation.summary: 'SUMMARY',
  MediaRelation.alternative: 'ALTERNATIVE',
  MediaRelation.spinOff: 'SPIN_OFF',
  MediaRelation.other: 'OTHER',
  MediaRelation.source: 'SOURCE',
  MediaRelation.compilation: 'COMPILATION',
  MediaRelation.contains: 'CONTAINS',
  MediaRelation.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

MediaInfo$Query$Media$MediaConnection
    _$MediaInfo$Query$Media$MediaConnectionFromJson(Map<String, dynamic> json) {
  return MediaInfo$Query$Media$MediaConnection()
    ..edges = (json['edges'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MediaInfo$Query$Media$MediaConnection$MediaEdge.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MediaInfo$Query$Media$MediaConnectionToJson(
        MediaInfo$Query$Media$MediaConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
    };

MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitleToJson(
            MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle
                instance) =>
        <String, dynamic>{
          'userPreferred': instance.userPreferred,
        };

MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImageToJson(
            MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage
                instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$MediaFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle
            .fromJson(json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage
            .fromJson(json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$MediaToJson(
            MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title?.toJson(),
          'coverImage': instance.coverImage?.toJson(),
        };

MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$RecommendationFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation()
    ..mediaRecommendation = json['mediaRecommendation'] == null
        ? null
        : MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media
            .fromJson(json['mediaRecommendation'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$RecommendationToJson(
            MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation
                instance) =>
        <String, dynamic>{
          'mediaRecommendation': instance.mediaRecommendation?.toJson(),
        };

MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdgeFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge()
    ..node = json['node'] == null
        ? null
        : MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation
            .fromJson(json['node'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdgeToJson(
            MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge
                instance) =>
        <String, dynamic>{
          'node': instance.node?.toJson(),
        };

MediaInfo$Query$Media$RecommendationConnection
    _$MediaInfo$Query$Media$RecommendationConnectionFromJson(
        Map<String, dynamic> json) {
  return MediaInfo$Query$Media$RecommendationConnection()
    ..edges = (json['edges'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MediaInfo$Query$Media$RecommendationConnectionToJson(
        MediaInfo$Query$Media$RecommendationConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
    };

MediaInfo$Query$Media _$MediaInfo$Query$MediaFromJson(
    Map<String, dynamic> json) {
  return MediaInfo$Query$Media()
    ..id = json['id'] as int
    ..type = _$enumDecodeNullable(_$MediaTypeEnumMap, json['type'],
        unknownValue: MediaType.artemisUnknown)
    ..title = json['title'] == null
        ? null
        : MediaInfo$Query$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : MediaInfo$Query$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..bannerImage = json['bannerImage'] as String?
    ..description = json['description'] as String?
    ..genres =
        (json['genres'] as List<dynamic>?)?.map((e) => e as String?).toList()
    ..favourites = json['favourites'] as int?
    ..averageScore = json['averageScore'] as int?
    ..format = _$enumDecodeNullable(_$MediaFormatEnumMap, json['format'],
        unknownValue: MediaFormat.artemisUnknown)
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..siteUrl = json['siteUrl'] as String?
    ..startDate = json['startDate'] == null
        ? null
        : MediaInfo$Query$Media$FuzzyDate.fromJson(
            json['startDate'] as Map<String, dynamic>)
    ..endDate = json['endDate'] == null
        ? null
        : MediaInfo$Query$Media$FuzzyDate.fromJson(
            json['endDate'] as Map<String, dynamic>)
    ..studios = json['studios'] == null
        ? null
        : MediaInfo$Query$Media$StudioConnection.fromJson(
            json['studios'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..duration = json['duration'] as int?
    ..season = _$enumDecodeNullable(_$MediaSeasonEnumMap, json['season'],
        unknownValue: MediaSeason.artemisUnknown)
    ..seasonYear = json['seasonYear'] as int?
    ..trailer = json['trailer'] == null
        ? null
        : MediaInfo$Query$Media$MediaTrailer.fromJson(
            json['trailer'] as Map<String, dynamic>)
    ..nextAiringEpisode = json['nextAiringEpisode'] == null
        ? null
        : MediaInfo$Query$Media$AiringSchedule.fromJson(
            json['nextAiringEpisode'] as Map<String, dynamic>)
    ..chapters = json['chapters'] as int?
    ..volumes = json['volumes'] as int?
    ..relations = json['relations'] == null
        ? null
        : MediaInfo$Query$Media$MediaConnection.fromJson(
            json['relations'] as Map<String, dynamic>)
    ..recommendations = json['recommendations'] == null
        ? null
        : MediaInfo$Query$Media$RecommendationConnection.fromJson(
            json['recommendations'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MediaInfo$Query$MediaToJson(
        MediaInfo$Query$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MediaTypeEnumMap[instance.type],
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
      'bannerImage': instance.bannerImage,
      'description': instance.description,
      'genres': instance.genres,
      'favourites': instance.favourites,
      'averageScore': instance.averageScore,
      'format': _$MediaFormatEnumMap[instance.format],
      'status': _$MediaStatusEnumMap[instance.status],
      'siteUrl': instance.siteUrl,
      'startDate': instance.startDate?.toJson(),
      'endDate': instance.endDate?.toJson(),
      'studios': instance.studios?.toJson(),
      'episodes': instance.episodes,
      'duration': instance.duration,
      'season': _$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      'trailer': instance.trailer?.toJson(),
      'nextAiringEpisode': instance.nextAiringEpisode?.toJson(),
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'relations': instance.relations?.toJson(),
      'recommendations': instance.recommendations?.toJson(),
    };

const _$MediaTypeEnumMap = {
  MediaType.anime: 'ANIME',
  MediaType.manga: 'MANGA',
  MediaType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$MediaFormatEnumMap = {
  MediaFormat.tv: 'TV',
  MediaFormat.tvShort: 'TV_SHORT',
  MediaFormat.movie: 'MOVIE',
  MediaFormat.special: 'SPECIAL',
  MediaFormat.ova: 'OVA',
  MediaFormat.ona: 'ONA',
  MediaFormat.music: 'MUSIC',
  MediaFormat.manga: 'MANGA',
  MediaFormat.novel: 'NOVEL',
  MediaFormat.oneShot: 'ONE_SHOT',
  MediaFormat.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$MediaSeasonEnumMap = {
  MediaSeason.winter: 'WINTER',
  MediaSeason.spring: 'SPRING',
  MediaSeason.summer: 'SUMMER',
  MediaSeason.fall: 'FALL',
  MediaSeason.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

MediaInfo$Query _$MediaInfo$QueryFromJson(Map<String, dynamic> json) {
  return MediaInfo$Query()
    ..media = json['Media'] == null
        ? null
        : MediaInfo$Query$Media.fromJson(json['Media'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MediaInfo$QueryToJson(MediaInfo$Query instance) =>
    <String, dynamic>{
      'Media': instance.media?.toJson(),
    };

PopularCustom$Query$Page$Media$MediaTitle
    _$PopularCustom$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return PopularCustom$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$PopularCustom$Query$Page$Media$MediaTitleToJson(
        PopularCustom$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

PopularCustom$Query$Page$Media$MediaCoverImage
    _$PopularCustom$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return PopularCustom$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$PopularCustom$Query$Page$Media$MediaCoverImageToJson(
        PopularCustom$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

PopularCustom$Query$Page$Media _$PopularCustom$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return PopularCustom$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : PopularCustom$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : PopularCustom$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PopularCustom$Query$Page$MediaToJson(
        PopularCustom$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

PopularCustom$Query$Page _$PopularCustom$Query$PageFromJson(
    Map<String, dynamic> json) {
  return PopularCustom$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : PopularCustom$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$PopularCustom$Query$PageToJson(
        PopularCustom$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

PopularCustom$Query _$PopularCustom$QueryFromJson(Map<String, dynamic> json) {
  return PopularCustom$Query()
    ..page = json['Page'] == null
        ? null
        : PopularCustom$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PopularCustom$QueryToJson(
        PopularCustom$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

SearchData$Query$Page$PageInfo _$SearchData$Query$Page$PageInfoFromJson(
    Map<String, dynamic> json) {
  return SearchData$Query$Page$PageInfo()
    ..total = json['total'] as int?
    ..currentPage = json['currentPage'] as int?
    ..lastPage = json['lastPage'] as int?
    ..hasNextPage = json['hasNextPage'] as bool?
    ..perPage = json['perPage'] as int?;
}

Map<String, dynamic> _$SearchData$Query$Page$PageInfoToJson(
        SearchData$Query$Page$PageInfo instance) =>
    <String, dynamic>{
      'total': instance.total,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'hasNextPage': instance.hasNextPage,
      'perPage': instance.perPage,
    };

SearchData$Query$Page$Media$MediaTitle
    _$SearchData$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return SearchData$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$SearchData$Query$Page$Media$MediaTitleToJson(
        SearchData$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

SearchData$Query$Page$Media$MediaCoverImage
    _$SearchData$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return SearchData$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$SearchData$Query$Page$Media$MediaCoverImageToJson(
        SearchData$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

SearchData$Query$Page$Media$StudioConnection$Studio
    _$SearchData$Query$Page$Media$StudioConnection$StudioFromJson(
        Map<String, dynamic> json) {
  return SearchData$Query$Page$Media$StudioConnection$Studio()
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$SearchData$Query$Page$Media$StudioConnection$StudioToJson(
            SearchData$Query$Page$Media$StudioConnection$Studio instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

SearchData$Query$Page$Media$StudioConnection
    _$SearchData$Query$Page$Media$StudioConnectionFromJson(
        Map<String, dynamic> json) {
  return SearchData$Query$Page$Media$StudioConnection()
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : SearchData$Query$Page$Media$StudioConnection$Studio.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SearchData$Query$Page$Media$StudioConnectionToJson(
        SearchData$Query$Page$Media$StudioConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes?.map((e) => e?.toJson()).toList(),
    };

SearchData$Query$Page$Media _$SearchData$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return SearchData$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : SearchData$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : SearchData$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..studios = json['studios'] == null
        ? null
        : SearchData$Query$Page$Media$StudioConnection.fromJson(
            json['studios'] as Map<String, dynamic>)
    ..format = _$enumDecodeNullable(_$MediaFormatEnumMap, json['format'],
        unknownValue: MediaFormat.artemisUnknown)
    ..averageScore = json['averageScore'] as int?
    ..season = _$enumDecodeNullable(_$MediaSeasonEnumMap, json['season'],
        unknownValue: MediaSeason.artemisUnknown)
    ..seasonYear = json['seasonYear'] as int?
    ..episodes = json['episodes'] as int?
    ..genres =
        (json['genres'] as List<dynamic>?)?.map((e) => e as String?).toList();
}

Map<String, dynamic> _$SearchData$Query$Page$MediaToJson(
        SearchData$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
      'studios': instance.studios?.toJson(),
      'format': _$MediaFormatEnumMap[instance.format],
      'averageScore': instance.averageScore,
      'season': _$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      'episodes': instance.episodes,
      'genres': instance.genres,
    };

SearchData$Query$Page _$SearchData$Query$PageFromJson(
    Map<String, dynamic> json) {
  return SearchData$Query$Page()
    ..pageInfo = json['pageInfo'] == null
        ? null
        : SearchData$Query$Page$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>)
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : SearchData$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SearchData$Query$PageToJson(
        SearchData$Query$Page instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo?.toJson(),
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

SearchData$Query _$SearchData$QueryFromJson(Map<String, dynamic> json) {
  return SearchData$Query()
    ..page = json['Page'] == null
        ? null
        : SearchData$Query$Page.fromJson(json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SearchData$QueryToJson(SearchData$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

StudioInfo$Query$Studio$MediaConnection$PageInfo
    _$StudioInfo$Query$Studio$MediaConnection$PageInfoFromJson(
        Map<String, dynamic> json) {
  return StudioInfo$Query$Studio$MediaConnection$PageInfo()
    ..hasNextPage = json['hasNextPage'] as bool?
    ..currentPage = json['currentPage'] as int?;
}

Map<String, dynamic> _$StudioInfo$Query$Studio$MediaConnection$PageInfoToJson(
        StudioInfo$Query$Studio$MediaConnection$PageInfo instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
    };

StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle
    _$StudioInfo$Query$Studio$MediaConnection$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String,
    dynamic> _$StudioInfo$Query$Studio$MediaConnection$Media$MediaTitleToJson(
        StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage
    _$StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic>
    _$StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImageToJson(
            StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage
                instance) =>
        <String, dynamic>{
          'large': instance.large,
        };

StudioInfo$Query$Studio$MediaConnection$Media
    _$StudioInfo$Query$Studio$MediaConnection$MediaFromJson(
        Map<String, dynamic> json) {
  return StudioInfo$Query$Studio$MediaConnection$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage
            .fromJson(json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StudioInfo$Query$Studio$MediaConnection$MediaToJson(
        StudioInfo$Query$Studio$MediaConnection$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
    };

StudioInfo$Query$Studio$MediaConnection
    _$StudioInfo$Query$Studio$MediaConnectionFromJson(
        Map<String, dynamic> json) {
  return StudioInfo$Query$Studio$MediaConnection()
    ..pageInfo = json['pageInfo'] == null
        ? null
        : StudioInfo$Query$Studio$MediaConnection$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>)
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : StudioInfo$Query$Studio$MediaConnection$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$StudioInfo$Query$Studio$MediaConnectionToJson(
        StudioInfo$Query$Studio$MediaConnection instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo?.toJson(),
      'nodes': instance.nodes?.map((e) => e?.toJson()).toList(),
    };

StudioInfo$Query$Studio _$StudioInfo$Query$StudioFromJson(
    Map<String, dynamic> json) {
  return StudioInfo$Query$Studio()
    ..name = json['name'] as String
    ..media = json['media'] == null
        ? null
        : StudioInfo$Query$Studio$MediaConnection.fromJson(
            json['media'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StudioInfo$Query$StudioToJson(
        StudioInfo$Query$Studio instance) =>
    <String, dynamic>{
      'name': instance.name,
      'media': instance.media?.toJson(),
    };

StudioInfo$Query _$StudioInfo$QueryFromJson(Map<String, dynamic> json) {
  return StudioInfo$Query()
    ..studio = json['Studio'] == null
        ? null
        : StudioInfo$Query$Studio.fromJson(
            json['Studio'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StudioInfo$QueryToJson(StudioInfo$Query instance) =>
    <String, dynamic>{
      'Studio': instance.studio?.toJson(),
    };

TopTenAnime$Query$Page$Media$MediaTitle
    _$TopTenAnime$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return TopTenAnime$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$TopTenAnime$Query$Page$Media$MediaTitleToJson(
        TopTenAnime$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

TopTenAnime$Query$Page$Media$MediaCoverImage
    _$TopTenAnime$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return TopTenAnime$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$TopTenAnime$Query$Page$Media$MediaCoverImageToJson(
        TopTenAnime$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

TopTenAnime$Query$Page$Media _$TopTenAnime$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return TopTenAnime$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : TopTenAnime$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..popularity = json['popularity'] as int?
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : TopTenAnime$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TopTenAnime$Query$Page$MediaToJson(
        TopTenAnime$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'popularity': instance.popularity,
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

TopTenAnime$Query$Page _$TopTenAnime$Query$PageFromJson(
    Map<String, dynamic> json) {
  return TopTenAnime$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : TopTenAnime$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TopTenAnime$Query$PageToJson(
        TopTenAnime$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

TopTenAnime$Query _$TopTenAnime$QueryFromJson(Map<String, dynamic> json) {
  return TopTenAnime$Query()
    ..page = json['Page'] == null
        ? null
        : TopTenAnime$Query$Page.fromJson(json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TopTenAnime$QueryToJson(TopTenAnime$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

TopTenManga$Query$Page$Media$MediaTitle
    _$TopTenManga$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return TopTenManga$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$TopTenManga$Query$Page$Media$MediaTitleToJson(
        TopTenManga$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

TopTenManga$Query$Page$Media$MediaCoverImage
    _$TopTenManga$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return TopTenManga$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$TopTenManga$Query$Page$Media$MediaCoverImageToJson(
        TopTenManga$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

TopTenManga$Query$Page$Media _$TopTenManga$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return TopTenManga$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : TopTenManga$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..popularity = json['popularity'] as int?
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : TopTenManga$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TopTenManga$Query$Page$MediaToJson(
        TopTenManga$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'popularity': instance.popularity,
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

TopTenManga$Query$Page _$TopTenManga$Query$PageFromJson(
    Map<String, dynamic> json) {
  return TopTenManga$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : TopTenManga$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TopTenManga$Query$PageToJson(
        TopTenManga$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

TopTenManga$Query _$TopTenManga$QueryFromJson(Map<String, dynamic> json) {
  return TopTenManga$Query()
    ..page = json['Page'] == null
        ? null
        : TopTenManga$Query$Page.fromJson(json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TopTenManga$QueryToJson(TopTenManga$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

TrendingAnime$Query$Page$Media$MediaTitle
    _$TrendingAnime$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return TrendingAnime$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$TrendingAnime$Query$Page$Media$MediaTitleToJson(
        TrendingAnime$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

TrendingAnime$Query$Page$Media$MediaCoverImage
    _$TrendingAnime$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return TrendingAnime$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$TrendingAnime$Query$Page$Media$MediaCoverImageToJson(
        TrendingAnime$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

TrendingAnime$Query$Page$Media _$TrendingAnime$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return TrendingAnime$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : TrendingAnime$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : TrendingAnime$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..bannerImage = json['bannerImage'] as String?;
}

Map<String, dynamic> _$TrendingAnime$Query$Page$MediaToJson(
        TrendingAnime$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
      'bannerImage': instance.bannerImage,
    };

TrendingAnime$Query$Page _$TrendingAnime$Query$PageFromJson(
    Map<String, dynamic> json) {
  return TrendingAnime$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : TrendingAnime$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TrendingAnime$Query$PageToJson(
        TrendingAnime$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

TrendingAnime$Query _$TrendingAnime$QueryFromJson(Map<String, dynamic> json) {
  return TrendingAnime$Query()
    ..page = json['Page'] == null
        ? null
        : TrendingAnime$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingAnime$QueryToJson(
        TrendingAnime$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

TrendingManga$Query$Page$Media$MediaTitle
    _$TrendingManga$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return TrendingManga$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String?;
}

Map<String, dynamic> _$TrendingManga$Query$Page$Media$MediaTitleToJson(
        TrendingManga$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

TrendingManga$Query$Page$Media$MediaCoverImage
    _$TrendingManga$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return TrendingManga$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String?;
}

Map<String, dynamic> _$TrendingManga$Query$Page$Media$MediaCoverImageToJson(
        TrendingManga$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

TrendingManga$Query$Page$Media _$TrendingManga$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return TrendingManga$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : TrendingManga$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int?
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : TrendingManga$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..bannerImage = json['bannerImage'] as String?;
}

Map<String, dynamic> _$TrendingManga$Query$Page$MediaToJson(
        TrendingManga$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
      'bannerImage': instance.bannerImage,
    };

TrendingManga$Query$Page _$TrendingManga$Query$PageFromJson(
    Map<String, dynamic> json) {
  return TrendingManga$Query$Page()
    ..media = (json['media'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : TrendingManga$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TrendingManga$Query$PageToJson(
        TrendingManga$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
    };

TrendingManga$Query _$TrendingManga$QueryFromJson(Map<String, dynamic> json) {
  return TrendingManga$Query()
    ..page = json['Page'] == null
        ? null
        : TrendingManga$Query$Page.fromJson(
            json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingManga$QueryToJson(
        TrendingManga$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

UserInfo$Query$User$UserAvatar _$UserInfo$Query$User$UserAvatarFromJson(
    Map<String, dynamic> json) {
  return UserInfo$Query$User$UserAvatar()..medium = json['medium'] as String?;
}

Map<String, dynamic> _$UserInfo$Query$User$UserAvatarToJson(
        UserInfo$Query$User$UserAvatar instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };

UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatisticFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic()
    ..score = json['score'] as int?
    ..count = json['count'] as int;
}

Map<String, dynamic>
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatisticToJson(
            UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic
                instance) =>
        <String, dynamic>{
          'score': instance.score,
          'count': instance.count,
        };

UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatisticFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic()
    ..genre = json['genre'] as String?
    ..count = json['count'] as int;
}

Map<String, dynamic>
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatisticToJson(
            UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic
                instance) =>
        <String, dynamic>{
          'genre': instance.genre,
          'count': instance.count,
        };

UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTagFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag()
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTagToJson(
            UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatisticFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic()
    ..tag = json['tag'] == null
        ? null
        : UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag
            .fromJson(json['tag'] as Map<String, dynamic>)
    ..count = json['count'] as int;
}

Map<String, dynamic>
    _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatisticToJson(
            UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic
                instance) =>
        <String, dynamic>{
          'tag': instance.tag?.toJson(),
          'count': instance.count,
        };

UserInfo$Query$User$UserStatisticTypes$UserStatistics
    _$UserInfo$Query$User$UserStatisticTypes$UserStatisticsFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes$UserStatistics()
    ..count = json['count'] as int
    ..episodesWatched = json['episodesWatched'] as int
    ..minutesWatched = json['minutesWatched'] as int
    ..chaptersRead = json['chaptersRead'] as int
    ..volumesRead = json['volumesRead'] as int
    ..scores = (json['scores'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..genres = (json['genres'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..tags = (json['tags'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$UserInfo$Query$User$UserStatisticTypes$UserStatisticsToJson(
            UserInfo$Query$User$UserStatisticTypes$UserStatistics instance) =>
        <String, dynamic>{
          'count': instance.count,
          'episodesWatched': instance.episodesWatched,
          'minutesWatched': instance.minutesWatched,
          'chaptersRead': instance.chaptersRead,
          'volumesRead': instance.volumesRead,
          'scores': instance.scores?.map((e) => e?.toJson()).toList(),
          'genres': instance.genres?.map((e) => e?.toJson()).toList(),
          'tags': instance.tags?.map((e) => e?.toJson()).toList(),
        };

UserInfo$Query$User$UserStatisticTypes
    _$UserInfo$Query$User$UserStatisticTypesFromJson(
        Map<String, dynamic> json) {
  return UserInfo$Query$User$UserStatisticTypes()
    ..anime = json['anime'] == null
        ? null
        : UserInfo$Query$User$UserStatisticTypes$UserStatistics.fromJson(
            json['anime'] as Map<String, dynamic>)
    ..manga = json['manga'] == null
        ? null
        : UserInfo$Query$User$UserStatisticTypes$UserStatistics.fromJson(
            json['manga'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserInfo$Query$User$UserStatisticTypesToJson(
        UserInfo$Query$User$UserStatisticTypes instance) =>
    <String, dynamic>{
      'anime': instance.anime?.toJson(),
      'manga': instance.manga?.toJson(),
    };

UserInfo$Query$User _$UserInfo$Query$UserFromJson(Map<String, dynamic> json) {
  return UserInfo$Query$User()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..avatar = json['avatar'] == null
        ? null
        : UserInfo$Query$User$UserAvatar.fromJson(
            json['avatar'] as Map<String, dynamic>)
    ..bannerImage = json['bannerImage'] as String?
    ..statistics = json['statistics'] == null
        ? null
        : UserInfo$Query$User$UserStatisticTypes.fromJson(
            json['statistics'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserInfo$Query$UserToJson(
        UserInfo$Query$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar?.toJson(),
      'bannerImage': instance.bannerImage,
      'statistics': instance.statistics?.toJson(),
    };

UserInfo$Query _$UserInfo$QueryFromJson(Map<String, dynamic> json) {
  return UserInfo$Query()
    ..viewer = json['Viewer'] == null
        ? null
        : UserInfo$Query$User.fromJson(json['Viewer'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserInfo$QueryToJson(UserInfo$Query instance) =>
    <String, dynamic>{
      'Viewer': instance.viewer?.toJson(),
    };

MediaInfoArguments _$MediaInfoArgumentsFromJson(Map<String, dynamic> json) {
  return MediaInfoArguments(
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$MediaInfoArgumentsToJson(MediaInfoArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

PopularCustomArguments _$PopularCustomArgumentsFromJson(
    Map<String, dynamic> json) {
  return PopularCustomArguments(
    season: _$enumDecodeNullable(_$MediaSeasonEnumMap, json['season'],
        unknownValue: MediaSeason.artemisUnknown),
    seasonYear: json['seasonYear'] as int?,
  );
}

Map<String, dynamic> _$PopularCustomArgumentsToJson(
        PopularCustomArguments instance) =>
    <String, dynamic>{
      'season': _$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
    };

SearchDataArguments _$SearchDataArgumentsFromJson(Map<String, dynamic> json) {
  return SearchDataArguments(
    page: json['page'] as int?,
    perPage: json['perPage'] as int?,
    search: json['search'] as String?,
  );
}

Map<String, dynamic> _$SearchDataArgumentsToJson(
        SearchDataArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'search': instance.search,
    };

StudioInfoArguments _$StudioInfoArgumentsFromJson(Map<String, dynamic> json) {
  return StudioInfoArguments(
    id: json['id'] as int?,
    page: json['page'] as int?,
  );
}

Map<String, dynamic> _$StudioInfoArgumentsToJson(
        StudioInfoArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
    };
