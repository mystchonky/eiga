// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeInfo$Query$Media$MediaTitle _$AnimeInfo$Query$Media$MediaTitleFromJson(
    Map<String, dynamic> json) {
  return AnimeInfo$Query$Media$MediaTitle()
    ..english = json['english'] as String
    ..romaji = json['romaji'] as String
    ..native = json['native'] as String;
}

Map<String, dynamic> _$AnimeInfo$Query$Media$MediaTitleToJson(
        AnimeInfo$Query$Media$MediaTitle instance) =>
    <String, dynamic>{
      'english': instance.english,
      'romaji': instance.romaji,
      'native': instance.native,
    };

AnimeInfo$Query$Media$MediaCoverImage
    _$AnimeInfo$Query$Media$MediaCoverImageFromJson(Map<String, dynamic> json) {
  return AnimeInfo$Query$Media$MediaCoverImage()
    ..large = json['large'] as String
    ..color = json['color'] as String;
}

Map<String, dynamic> _$AnimeInfo$Query$Media$MediaCoverImageToJson(
        AnimeInfo$Query$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
      'color': instance.color,
    };

AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio
    _$AnimeInfo$Query$Media$StudioConnection$StudioEdge$StudioFromJson(
        Map<String, dynamic> json) {
  return AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio()
    ..name = json['name'] as String;
}

Map<String,
    dynamic> _$AnimeInfo$Query$Media$StudioConnection$StudioEdge$StudioToJson(
        AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

AnimeInfo$Query$Media$StudioConnection$StudioEdge
    _$AnimeInfo$Query$Media$StudioConnection$StudioEdgeFromJson(
        Map<String, dynamic> json) {
  return AnimeInfo$Query$Media$StudioConnection$StudioEdge()
    ..node = json['node'] == null
        ? null
        : AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio.fromJson(
            json['node'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AnimeInfo$Query$Media$StudioConnection$StudioEdgeToJson(
        AnimeInfo$Query$Media$StudioConnection$StudioEdge instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
    };

AnimeInfo$Query$Media$StudioConnection
    _$AnimeInfo$Query$Media$StudioConnectionFromJson(
        Map<String, dynamic> json) {
  return AnimeInfo$Query$Media$StudioConnection()
    ..edges = (json['edges'] as List)
        ?.map((e) => e == null
            ? null
            : AnimeInfo$Query$Media$StudioConnection$StudioEdge.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AnimeInfo$Query$Media$StudioConnectionToJson(
        AnimeInfo$Query$Media$StudioConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
    };

AnimeInfo$Query$Media _$AnimeInfo$Query$MediaFromJson(
    Map<String, dynamic> json) {
  return AnimeInfo$Query$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : AnimeInfo$Query$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..coverImage = json['coverImage'] == null
        ? null
        : AnimeInfo$Query$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..bannerImage = json['bannerImage'] as String
    ..description = json['description'] as String
    ..genres = (json['genres'] as List)?.map((e) => e as String)?.toList()
    ..studios = json['studios'] == null
        ? null
        : AnimeInfo$Query$Media$StudioConnection.fromJson(
            json['studios'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int
    ..averageScore = json['averageScore'] as int;
}

Map<String, dynamic> _$AnimeInfo$Query$MediaToJson(
        AnimeInfo$Query$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
      'bannerImage': instance.bannerImage,
      'description': instance.description,
      'genres': instance.genres,
      'studios': instance.studios?.toJson(),
      'episodes': instance.episodes,
      'averageScore': instance.averageScore,
    };

AnimeInfo$Query _$AnimeInfo$QueryFromJson(Map<String, dynamic> json) {
  return AnimeInfo$Query()
    ..media = json['Media'] == null
        ? null
        : AnimeInfo$Query$Media.fromJson(json['Media'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AnimeInfo$QueryToJson(AnimeInfo$Query instance) =>
    <String, dynamic>{
      'Media': instance.media?.toJson(),
    };

Popular$Query$Page$Media$MediaTitle
    _$Popular$Query$Page$Media$MediaTitleFromJson(Map<String, dynamic> json) {
  return Popular$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String;
}

Map<String, dynamic> _$Popular$Query$Page$Media$MediaTitleToJson(
        Popular$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

Popular$Query$Page$Media$MediaCoverImage
    _$Popular$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return Popular$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String;
}

Map<String, dynamic> _$Popular$Query$Page$Media$MediaCoverImageToJson(
        Popular$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

Popular$Query$Page$Media _$Popular$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return Popular$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : Popular$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : Popular$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Popular$Query$Page$MediaToJson(
        Popular$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$MediaStatusEnumMap = {
  MediaStatus.finished: 'FINISHED',
  MediaStatus.releasing: 'RELEASING',
  MediaStatus.notYetReleased: 'NOT_YET_RELEASED',
  MediaStatus.cancelled: 'CANCELLED',
  MediaStatus.hiatus: 'HIATUS',
  MediaStatus.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Popular$Query$Page _$Popular$Query$PageFromJson(Map<String, dynamic> json) {
  return Popular$Query$Page()
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : Popular$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Popular$Query$PageToJson(Popular$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
    };

Popular$Query _$Popular$QueryFromJson(Map<String, dynamic> json) {
  return Popular$Query()
    ..page = json['Page'] == null
        ? null
        : Popular$Query$Page.fromJson(json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Popular$QueryToJson(Popular$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

PopularCustom$Query$Page$Media$MediaTitle
    _$PopularCustom$Query$Page$Media$MediaTitleFromJson(
        Map<String, dynamic> json) {
  return PopularCustom$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String;
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
    ..large = json['large'] as String;
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
    ..episodes = json['episodes'] as int
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
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : PopularCustom$Query$Page$Media.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PopularCustom$Query$PageToJson(
        PopularCustom$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
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
    ..total = json['total'] as int
    ..currentPage = json['currentPage'] as int
    ..lastPage = json['lastPage'] as int
    ..hasNextPage = json['hasNextPage'] as bool
    ..perPage = json['perPage'] as int;
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
    ..english = json['english'] as String
    ..romaji = json['romaji'] as String
    ..native = json['native'] as String;
}

Map<String, dynamic> _$SearchData$Query$Page$Media$MediaTitleToJson(
        SearchData$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'english': instance.english,
      'romaji': instance.romaji,
      'native': instance.native,
    };

SearchData$Query$Page$Media$MediaCoverImage
    _$SearchData$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return SearchData$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String;
}

Map<String, dynamic> _$SearchData$Query$Page$Media$MediaCoverImageToJson(
        SearchData$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
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
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SearchData$Query$Page$MediaToJson(
        SearchData$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
    };

SearchData$Query$Page _$SearchData$Query$PageFromJson(
    Map<String, dynamic> json) {
  return SearchData$Query$Page()
    ..pageInfo = json['pageInfo'] == null
        ? null
        : SearchData$Query$Page$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>)
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : SearchData$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SearchData$Query$PageToJson(
        SearchData$Query$Page instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo?.toJson(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
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

Trending$Query$Page$Media$MediaTitle
    _$Trending$Query$Page$Media$MediaTitleFromJson(Map<String, dynamic> json) {
  return Trending$Query$Page$Media$MediaTitle()
    ..userPreferred = json['userPreferred'] as String;
}

Map<String, dynamic> _$Trending$Query$Page$Media$MediaTitleToJson(
        Trending$Query$Page$Media$MediaTitle instance) =>
    <String, dynamic>{
      'userPreferred': instance.userPreferred,
    };

Trending$Query$Page$Media$MediaCoverImage
    _$Trending$Query$Page$Media$MediaCoverImageFromJson(
        Map<String, dynamic> json) {
  return Trending$Query$Page$Media$MediaCoverImage()
    ..large = json['large'] as String;
}

Map<String, dynamic> _$Trending$Query$Page$Media$MediaCoverImageToJson(
        Trending$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

Trending$Query$Page$Media _$Trending$Query$Page$MediaFromJson(
    Map<String, dynamic> json) {
  return Trending$Query$Page$Media()
    ..id = json['id'] as int
    ..title = json['title'] == null
        ? null
        : Trending$Query$Page$Media$MediaTitle.fromJson(
            json['title'] as Map<String, dynamic>)
    ..episodes = json['episodes'] as int
    ..status = _$enumDecodeNullable(_$MediaStatusEnumMap, json['status'],
        unknownValue: MediaStatus.artemisUnknown)
    ..coverImage = json['coverImage'] == null
        ? null
        : Trending$Query$Page$Media$MediaCoverImage.fromJson(
            json['coverImage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Trending$Query$Page$MediaToJson(
        Trending$Query$Page$Media instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title?.toJson(),
      'episodes': instance.episodes,
      'status': _$MediaStatusEnumMap[instance.status],
      'coverImage': instance.coverImage?.toJson(),
    };

Trending$Query$Page _$Trending$Query$PageFromJson(Map<String, dynamic> json) {
  return Trending$Query$Page()
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : Trending$Query$Page$Media.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Trending$Query$PageToJson(
        Trending$Query$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
    };

Trending$Query _$Trending$QueryFromJson(Map<String, dynamic> json) {
  return Trending$Query()
    ..page = json['Page'] == null
        ? null
        : Trending$Query$Page.fromJson(json['Page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Trending$QueryToJson(Trending$Query instance) =>
    <String, dynamic>{
      'Page': instance.page?.toJson(),
    };

AnimeInfoArguments _$AnimeInfoArgumentsFromJson(Map<String, dynamic> json) {
  return AnimeInfoArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$AnimeInfoArgumentsToJson(AnimeInfoArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

PopularCustomArguments _$PopularCustomArgumentsFromJson(
    Map<String, dynamic> json) {
  return PopularCustomArguments(
    season: _$enumDecodeNullable(_$MediaSeasonEnumMap, json['season'],
        unknownValue: MediaSeason.artemisUnknown),
    seasonYear: json['seasonYear'] as int,
  );
}

Map<String, dynamic> _$PopularCustomArgumentsToJson(
        PopularCustomArguments instance) =>
    <String, dynamic>{
      'season': _$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
    };

const _$MediaSeasonEnumMap = {
  MediaSeason.winter: 'WINTER',
  MediaSeason.spring: 'SPRING',
  MediaSeason.summer: 'SUMMER',
  MediaSeason.fall: 'FALL',
  MediaSeason.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

SearchDataArguments _$SearchDataArgumentsFromJson(Map<String, dynamic> json) {
  return SearchDataArguments(
    page: json['page'] as int,
    perPage: json['perPage'] as int,
    search: json['search'] as String,
  );
}

Map<String, dynamic> _$SearchDataArgumentsToJson(
        SearchDataArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'search': instance.search,
    };
