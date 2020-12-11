// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    ..medium = json['medium'] as String;
}

Map<String, dynamic> _$SearchData$Query$Page$Media$MediaCoverImageToJson(
        SearchData$Query$Page$Media$MediaCoverImage instance) =>
    <String, dynamic>{
      'medium': instance.medium,
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
