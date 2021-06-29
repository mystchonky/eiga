// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AllTimePopularAnime$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  AllTimePopularAnime$Query$Page$Media$MediaTitle();

  factory AllTimePopularAnime$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularAnime$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularAnime$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularAnime$Query$Page$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  AllTimePopularAnime$Query$Page$Media$MediaCoverImage();

  factory AllTimePopularAnime$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularAnime$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularAnime$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularAnime$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  AllTimePopularAnime$Query$Page$Media();

  factory AllTimePopularAnime$Query$Page$Media.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularAnime$Query$Page$MediaFromJson(json);

  late int id;

  AllTimePopularAnime$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  AllTimePopularAnime$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props => [id, title, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularAnime$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularAnime$Query$Page extends JsonSerializable
    with EquatableMixin {
  AllTimePopularAnime$Query$Page();

  factory AllTimePopularAnime$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularAnime$Query$PageFromJson(json);

  List<AllTimePopularAnime$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$AllTimePopularAnime$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularAnime$Query extends JsonSerializable with EquatableMixin {
  AllTimePopularAnime$Query();

  factory AllTimePopularAnime$Query.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularAnime$QueryFromJson(json);

  @JsonKey(name: 'Page')
  AllTimePopularAnime$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$AllTimePopularAnime$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManga$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManga$Query$Page$Media$MediaTitle();

  factory AllTimePopularManga$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManga$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManga$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManga$Query$Page$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  AllTimePopularManga$Query$Page$Media$MediaCoverImage();

  factory AllTimePopularManga$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManga$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManga$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManga$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManga$Query$Page$Media();

  factory AllTimePopularManga$Query$Page$Media.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManga$Query$Page$MediaFromJson(json);

  late int id;

  AllTimePopularManga$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  AllTimePopularManga$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props => [id, title, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManga$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManga$Query$Page extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManga$Query$Page();

  factory AllTimePopularManga$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularManga$Query$PageFromJson(json);

  List<AllTimePopularManga$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$AllTimePopularManga$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManga$Query extends JsonSerializable with EquatableMixin {
  AllTimePopularManga$Query();

  factory AllTimePopularManga$Query.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularManga$QueryFromJson(json);

  @JsonKey(name: 'Page')
  AllTimePopularManga$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$AllTimePopularManga$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManhwa$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManhwa$Query$Page$Media$MediaTitle();

  factory AllTimePopularManhwa$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManhwa$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManhwa$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManhwa$Query$Page$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  AllTimePopularManhwa$Query$Page$Media$MediaCoverImage();

  factory AllTimePopularManhwa$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManhwa$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManhwa$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManhwa$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManhwa$Query$Page$Media();

  factory AllTimePopularManhwa$Query$Page$Media.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopularManhwa$Query$Page$MediaFromJson(json);

  late int id;

  AllTimePopularManhwa$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  AllTimePopularManhwa$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props => [id, title, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManhwa$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManhwa$Query$Page extends JsonSerializable
    with EquatableMixin {
  AllTimePopularManhwa$Query$Page();

  factory AllTimePopularManhwa$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularManhwa$Query$PageFromJson(json);

  List<AllTimePopularManhwa$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() =>
      _$AllTimePopularManhwa$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopularManhwa$Query extends JsonSerializable with EquatableMixin {
  AllTimePopularManhwa$Query();

  factory AllTimePopularManhwa$Query.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopularManhwa$QueryFromJson(json);

  @JsonKey(name: 'Page')
  AllTimePopularManhwa$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$AllTimePopularManhwa$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$MediaTitle();

  factory MediaInfo$Query$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaTitleFromJson(json);

  String? english;

  String? romaji;

  String? native;

  @override
  List<Object?> get props => [english, romaji, native];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$MediaCoverImage();

  factory MediaInfo$Query$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaCoverImageFromJson(json);

  String? large;

  String? color;

  @override
  List<Object?> get props => [large, color];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$FuzzyDate extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$FuzzyDate();

  factory MediaInfo$Query$Media$FuzzyDate.fromJson(Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$FuzzyDateFromJson(json);

  int? year;

  int? month;

  int? day;

  @override
  List<Object?> get props => [year, month, day];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$FuzzyDateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$StudioConnection$Studio extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$StudioConnection$Studio();

  factory MediaInfo$Query$Media$StudioConnection$Studio.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$StudioConnection$StudioFromJson(json);

  late int id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$StudioConnection$StudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$StudioConnection extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$StudioConnection();

  factory MediaInfo$Query$Media$StudioConnection.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$StudioConnectionFromJson(json);

  List<MediaInfo$Query$Media$StudioConnection$Studio?>? nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$StudioConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaTrailer extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$MediaTrailer();

  factory MediaInfo$Query$Media$MediaTrailer.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaTrailerFromJson(json);

  String? site;

  @override
  List<Object?> get props => [site];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaTrailerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$AiringSchedule extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$AiringSchedule();

  factory MediaInfo$Query$Media$AiringSchedule.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$AiringScheduleFromJson(json);

  late int id;

  late int episode;

  late int airingAt;

  @override
  List<Object?> get props => [id, episode, airingAt];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$AiringScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle();

  factory MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleFromJson(
          json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage();

  factory MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageFromJson(
          json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaConnection$MediaEdge$Media
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media();

  factory MediaInfo$Query$Media$MediaConnection$MediaEdge$Media.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$MediaFromJson(json);

  late int id;

  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle? title;

  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage?
      coverImage;

  @override
  List<Object?> get props => [id, title, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdge$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaConnection$MediaEdge extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$MediaConnection$MediaEdge();

  factory MediaInfo$Query$Media$MediaConnection$MediaEdge.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdgeFromJson(json);

  @JsonKey(unknownEnumValue: MediaRelation.artemisUnknown)
  MediaRelation? relationType;

  MediaInfo$Query$Media$MediaConnection$MediaEdge$Media? node;

  @override
  List<Object?> get props => [relationType, node];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaConnection$MediaEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$MediaConnection extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$MediaConnection();

  factory MediaInfo$Query$Media$MediaConnection.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$MediaConnectionFromJson(json);

  List<MediaInfo$Query$Media$MediaConnection$MediaEdge?>? edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$MediaConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle();

  factory MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitleFromJson(
          json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitleToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage();

  factory MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImageFromJson(
          json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media();

  factory MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$MediaFromJson(
          json);

  late int id;

  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaTitle?
      title;

  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media$MediaCoverImage?
      coverImage;

  @override
  List<Object?> get props => [id, title, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$MediaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation();

  factory MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$RecommendationFromJson(
          json);

  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation$Media?
      mediaRecommendation;

  @override
  List<Object?> get props => [mediaRecommendation];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$RecommendationToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge
    extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge();

  factory MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdgeFromJson(
          json);

  MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge$Recommendation?
      node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnection$RecommendationEdgeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media$RecommendationConnection extends JsonSerializable
    with EquatableMixin {
  MediaInfo$Query$Media$RecommendationConnection();

  factory MediaInfo$Query$Media$RecommendationConnection.fromJson(
          Map<String, dynamic> json) =>
      _$MediaInfo$Query$Media$RecommendationConnectionFromJson(json);

  List<MediaInfo$Query$Media$RecommendationConnection$RecommendationEdge?>?
      edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() =>
      _$MediaInfo$Query$Media$RecommendationConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query$Media extends JsonSerializable with EquatableMixin {
  MediaInfo$Query$Media();

  factory MediaInfo$Query$Media.fromJson(Map<String, dynamic> json) =>
      _$MediaInfo$Query$MediaFromJson(json);

  late int id;

  @JsonKey(unknownEnumValue: MediaType.artemisUnknown)
  MediaType? type;

  MediaInfo$Query$Media$MediaTitle? title;

  MediaInfo$Query$Media$MediaCoverImage? coverImage;

  String? bannerImage;

  String? description;

  List<String?>? genres;

  int? favourites;

  int? averageScore;

  @JsonKey(unknownEnumValue: MediaFormat.artemisUnknown)
  MediaFormat? format;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  String? siteUrl;

  MediaInfo$Query$Media$FuzzyDate? startDate;

  MediaInfo$Query$Media$FuzzyDate? endDate;

  MediaInfo$Query$Media$StudioConnection? studios;

  int? episodes;

  int? duration;

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  MediaSeason? season;

  int? seasonYear;

  MediaInfo$Query$Media$MediaTrailer? trailer;

  MediaInfo$Query$Media$AiringSchedule? nextAiringEpisode;

  int? chapters;

  int? volumes;

  MediaInfo$Query$Media$MediaConnection? relations;

  MediaInfo$Query$Media$RecommendationConnection? recommendations;

  @override
  List<Object?> get props => [
        id,
        type,
        title,
        coverImage,
        bannerImage,
        description,
        genres,
        favourites,
        averageScore,
        format,
        status,
        siteUrl,
        startDate,
        endDate,
        studios,
        episodes,
        duration,
        season,
        seasonYear,
        trailer,
        nextAiringEpisode,
        chapters,
        volumes,
        relations,
        recommendations
      ];
  @override
  Map<String, dynamic> toJson() => _$MediaInfo$Query$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaInfo$Query extends JsonSerializable with EquatableMixin {
  MediaInfo$Query();

  factory MediaInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$MediaInfo$QueryFromJson(json);

  @JsonKey(name: 'Media')
  MediaInfo$Query$Media? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$MediaInfo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  PopularCustom$Query$Page$Media$MediaTitle();

  factory PopularCustom$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$PopularCustom$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  PopularCustom$Query$Page$Media$MediaCoverImage();

  factory PopularCustom$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$PopularCustom$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  PopularCustom$Query$Page$Media();

  factory PopularCustom$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$MediaFromJson(json);

  late int id;

  PopularCustom$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  PopularCustom$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props => [id, title, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() => _$PopularCustom$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page extends JsonSerializable with EquatableMixin {
  PopularCustom$Query$Page();

  factory PopularCustom$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$Query$PageFromJson(json);

  List<PopularCustom$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$PopularCustom$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query extends JsonSerializable with EquatableMixin {
  PopularCustom$Query();

  factory PopularCustom$Query.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$QueryFromJson(json);

  @JsonKey(name: 'Page')
  PopularCustom$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$PopularCustom$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$PageInfo extends JsonSerializable
    with EquatableMixin {
  SearchData$Query$Page$PageInfo();

  factory SearchData$Query$Page$PageInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$Page$PageInfoFromJson(json);

  int? total;

  int? currentPage;

  int? lastPage;

  bool? hasNextPage;

  int? perPage;

  @override
  List<Object?> get props =>
      [total, currentPage, lastPage, hasNextPage, perPage];
  @override
  Map<String, dynamic> toJson() => _$SearchData$Query$Page$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  SearchData$Query$Page$Media$MediaTitle();

  factory SearchData$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  SearchData$Query$Page$Media$MediaCoverImage();

  factory SearchData$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$StudioConnection$Studio
    extends JsonSerializable with EquatableMixin {
  SearchData$Query$Page$Media$StudioConnection$Studio();

  factory SearchData$Query$Page$Media$StudioConnection$Studio.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$StudioConnection$StudioFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$StudioConnection$StudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$StudioConnection extends JsonSerializable
    with EquatableMixin {
  SearchData$Query$Page$Media$StudioConnection();

  factory SearchData$Query$Page$Media$StudioConnection.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$StudioConnectionFromJson(json);

  List<SearchData$Query$Page$Media$StudioConnection$Studio?>? nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$StudioConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media extends JsonSerializable with EquatableMixin {
  SearchData$Query$Page$Media();

  factory SearchData$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$Page$MediaFromJson(json);

  late int id;

  SearchData$Query$Page$Media$MediaTitle? title;

  SearchData$Query$Page$Media$MediaCoverImage? coverImage;

  SearchData$Query$Page$Media$StudioConnection? studios;

  @JsonKey(unknownEnumValue: MediaFormat.artemisUnknown)
  MediaFormat? format;

  int? averageScore;

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  MediaSeason? season;

  int? seasonYear;

  int? episodes;

  List<String?>? genres;

  @override
  List<Object?> get props => [
        id,
        title,
        coverImage,
        studios,
        format,
        averageScore,
        season,
        seasonYear,
        episodes,
        genres
      ];
  @override
  Map<String, dynamic> toJson() => _$SearchData$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page extends JsonSerializable with EquatableMixin {
  SearchData$Query$Page();

  factory SearchData$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$PageFromJson(json);

  SearchData$Query$Page$PageInfo? pageInfo;

  List<SearchData$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [pageInfo, media];
  @override
  Map<String, dynamic> toJson() => _$SearchData$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query extends JsonSerializable with EquatableMixin {
  SearchData$Query();

  factory SearchData$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchData$QueryFromJson(json);

  @JsonKey(name: 'Page')
  SearchData$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$SearchData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio$MediaConnection$PageInfo extends JsonSerializable
    with EquatableMixin {
  StudioInfo$Query$Studio$MediaConnection$PageInfo();

  factory StudioInfo$Query$Studio$MediaConnection$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$StudioInfo$Query$Studio$MediaConnection$PageInfoFromJson(json);

  bool? hasNextPage;

  int? currentPage;

  @override
  List<Object?> get props => [hasNextPage, currentPage];
  @override
  Map<String, dynamic> toJson() =>
      _$StudioInfo$Query$Studio$MediaConnection$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle
    extends JsonSerializable with EquatableMixin {
  StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle();

  factory StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$StudioInfo$Query$Studio$MediaConnection$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$StudioInfo$Query$Studio$MediaConnection$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage
    extends JsonSerializable with EquatableMixin {
  StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage();

  factory StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImageFromJson(
          json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio$MediaConnection$Media extends JsonSerializable
    with EquatableMixin {
  StudioInfo$Query$Studio$MediaConnection$Media();

  factory StudioInfo$Query$Studio$MediaConnection$Media.fromJson(
          Map<String, dynamic> json) =>
      _$StudioInfo$Query$Studio$MediaConnection$MediaFromJson(json);

  late int id;

  StudioInfo$Query$Studio$MediaConnection$Media$MediaTitle? title;

  StudioInfo$Query$Studio$MediaConnection$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props => [id, title, coverImage];
  @override
  Map<String, dynamic> toJson() =>
      _$StudioInfo$Query$Studio$MediaConnection$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio$MediaConnection extends JsonSerializable
    with EquatableMixin {
  StudioInfo$Query$Studio$MediaConnection();

  factory StudioInfo$Query$Studio$MediaConnection.fromJson(
          Map<String, dynamic> json) =>
      _$StudioInfo$Query$Studio$MediaConnectionFromJson(json);

  StudioInfo$Query$Studio$MediaConnection$PageInfo? pageInfo;

  List<StudioInfo$Query$Studio$MediaConnection$Media?>? nodes;

  @override
  List<Object?> get props => [pageInfo, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$StudioInfo$Query$Studio$MediaConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query$Studio extends JsonSerializable with EquatableMixin {
  StudioInfo$Query$Studio();

  factory StudioInfo$Query$Studio.fromJson(Map<String, dynamic> json) =>
      _$StudioInfo$Query$StudioFromJson(json);

  late String name;

  StudioInfo$Query$Studio$MediaConnection? media;

  @override
  List<Object?> get props => [name, media];
  @override
  Map<String, dynamic> toJson() => _$StudioInfo$Query$StudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StudioInfo$Query extends JsonSerializable with EquatableMixin {
  StudioInfo$Query();

  factory StudioInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$StudioInfo$QueryFromJson(json);

  @JsonKey(name: 'Studio')
  StudioInfo$Query$Studio? studio;

  @override
  List<Object?> get props => [studio];
  @override
  Map<String, dynamic> toJson() => _$StudioInfo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenAnime$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  TopTenAnime$Query$Page$Media$MediaTitle();

  factory TopTenAnime$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$TopTenAnime$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$TopTenAnime$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenAnime$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  TopTenAnime$Query$Page$Media$MediaCoverImage();

  factory TopTenAnime$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$TopTenAnime$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$TopTenAnime$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenAnime$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  TopTenAnime$Query$Page$Media();

  factory TopTenAnime$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$TopTenAnime$Query$Page$MediaFromJson(json);

  late int id;

  TopTenAnime$Query$Page$Media$MediaTitle? title;

  int? popularity;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  TopTenAnime$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props =>
      [id, title, popularity, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() => _$TopTenAnime$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenAnime$Query$Page extends JsonSerializable with EquatableMixin {
  TopTenAnime$Query$Page();

  factory TopTenAnime$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$TopTenAnime$Query$PageFromJson(json);

  List<TopTenAnime$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$TopTenAnime$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenAnime$Query extends JsonSerializable with EquatableMixin {
  TopTenAnime$Query();

  factory TopTenAnime$Query.fromJson(Map<String, dynamic> json) =>
      _$TopTenAnime$QueryFromJson(json);

  @JsonKey(name: 'Page')
  TopTenAnime$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$TopTenAnime$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenManga$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  TopTenManga$Query$Page$Media$MediaTitle();

  factory TopTenManga$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$TopTenManga$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$TopTenManga$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenManga$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  TopTenManga$Query$Page$Media$MediaCoverImage();

  factory TopTenManga$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$TopTenManga$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$TopTenManga$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenManga$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  TopTenManga$Query$Page$Media();

  factory TopTenManga$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$TopTenManga$Query$Page$MediaFromJson(json);

  late int id;

  TopTenManga$Query$Page$Media$MediaTitle? title;

  int? popularity;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  TopTenManga$Query$Page$Media$MediaCoverImage? coverImage;

  @override
  List<Object?> get props =>
      [id, title, popularity, episodes, status, coverImage];
  @override
  Map<String, dynamic> toJson() => _$TopTenManga$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenManga$Query$Page extends JsonSerializable with EquatableMixin {
  TopTenManga$Query$Page();

  factory TopTenManga$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$TopTenManga$Query$PageFromJson(json);

  List<TopTenManga$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$TopTenManga$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTenManga$Query extends JsonSerializable with EquatableMixin {
  TopTenManga$Query();

  factory TopTenManga$Query.fromJson(Map<String, dynamic> json) =>
      _$TopTenManga$QueryFromJson(json);

  @JsonKey(name: 'Page')
  TopTenManga$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$TopTenManga$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  TrendingAnime$Query$Page$Media$MediaTitle();

  factory TrendingAnime$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$TrendingAnime$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$TrendingAnime$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  TrendingAnime$Query$Page$Media$MediaCoverImage();

  factory TrendingAnime$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$TrendingAnime$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$TrendingAnime$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  TrendingAnime$Query$Page$Media();

  factory TrendingAnime$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$TrendingAnime$Query$Page$MediaFromJson(json);

  late int id;

  TrendingAnime$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  TrendingAnime$Query$Page$Media$MediaCoverImage? coverImage;

  String? bannerImage;

  @override
  List<Object?> get props =>
      [id, title, episodes, status, coverImage, bannerImage];
  @override
  Map<String, dynamic> toJson() => _$TrendingAnime$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime$Query$Page extends JsonSerializable with EquatableMixin {
  TrendingAnime$Query$Page();

  factory TrendingAnime$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$TrendingAnime$Query$PageFromJson(json);

  List<TrendingAnime$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$TrendingAnime$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingAnime$Query extends JsonSerializable with EquatableMixin {
  TrendingAnime$Query();

  factory TrendingAnime$Query.fromJson(Map<String, dynamic> json) =>
      _$TrendingAnime$QueryFromJson(json);

  @JsonKey(name: 'Page')
  TrendingAnime$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$TrendingAnime$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingManga$Query$Page$Media$MediaTitle extends JsonSerializable
    with EquatableMixin {
  TrendingManga$Query$Page$Media$MediaTitle();

  factory TrendingManga$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$TrendingManga$Query$Page$Media$MediaTitleFromJson(json);

  String? userPreferred;

  @override
  List<Object?> get props => [userPreferred];
  @override
  Map<String, dynamic> toJson() =>
      _$TrendingManga$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingManga$Query$Page$Media$MediaCoverImage extends JsonSerializable
    with EquatableMixin {
  TrendingManga$Query$Page$Media$MediaCoverImage();

  factory TrendingManga$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$TrendingManga$Query$Page$Media$MediaCoverImageFromJson(json);

  String? large;

  @override
  List<Object?> get props => [large];
  @override
  Map<String, dynamic> toJson() =>
      _$TrendingManga$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingManga$Query$Page$Media extends JsonSerializable
    with EquatableMixin {
  TrendingManga$Query$Page$Media();

  factory TrendingManga$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$TrendingManga$Query$Page$MediaFromJson(json);

  late int id;

  TrendingManga$Query$Page$Media$MediaTitle? title;

  int? episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus? status;

  TrendingManga$Query$Page$Media$MediaCoverImage? coverImage;

  String? bannerImage;

  @override
  List<Object?> get props =>
      [id, title, episodes, status, coverImage, bannerImage];
  @override
  Map<String, dynamic> toJson() => _$TrendingManga$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingManga$Query$Page extends JsonSerializable with EquatableMixin {
  TrendingManga$Query$Page();

  factory TrendingManga$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$TrendingManga$Query$PageFromJson(json);

  List<TrendingManga$Query$Page$Media?>? media;

  @override
  List<Object?> get props => [media];
  @override
  Map<String, dynamic> toJson() => _$TrendingManga$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrendingManga$Query extends JsonSerializable with EquatableMixin {
  TrendingManga$Query();

  factory TrendingManga$Query.fromJson(Map<String, dynamic> json) =>
      _$TrendingManga$QueryFromJson(json);

  @JsonKey(name: 'Page')
  TrendingManga$Query$Page? page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$TrendingManga$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserAvatar extends JsonSerializable
    with EquatableMixin {
  UserInfo$Query$User$UserAvatar();

  factory UserInfo$Query$User$UserAvatar.fromJson(Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserAvatarFromJson(json);

  String? medium;

  @override
  List<Object?> get props => [medium];
  @override
  Map<String, dynamic> toJson() => _$UserInfo$Query$User$UserAvatarToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic
    extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic();

  factory UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatisticFromJson(
          json);

  int? score;

  late int count;

  @override
  List<Object?> get props => [score, count];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatisticToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic
    extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic();

  factory UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatisticFromJson(
          json);

  String? genre;

  late int count;

  @override
  List<Object?> get props => [genre, count];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatisticToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag
    extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag();

  factory UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTagFromJson(
          json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTagToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic
    extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic();

  factory UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatisticFromJson(
          json);

  UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic$MediaTag?
      tag;

  late int count;

  @override
  List<Object?> get props => [tag, count];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatisticToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes$UserStatistics
    extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes$UserStatistics();

  factory UserInfo$Query$User$UserStatisticTypes$UserStatistics.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatisticsFromJson(json);

  late int count;

  late int episodesWatched;

  late int minutesWatched;

  late int chaptersRead;

  late int volumesRead;

  List<UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserScoreStatistic?>?
      scores;

  List<UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserGenreStatistic?>?
      genres;

  List<UserInfo$Query$User$UserStatisticTypes$UserStatistics$UserTagStatistic?>?
      tags;

  @override
  List<Object?> get props => [
        count,
        episodesWatched,
        minutesWatched,
        chaptersRead,
        volumesRead,
        scores,
        genres,
        tags
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypes$UserStatisticsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User$UserStatisticTypes extends JsonSerializable
    with EquatableMixin {
  UserInfo$Query$User$UserStatisticTypes();

  factory UserInfo$Query$User$UserStatisticTypes.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfo$Query$User$UserStatisticTypesFromJson(json);

  UserInfo$Query$User$UserStatisticTypes$UserStatistics? anime;

  UserInfo$Query$User$UserStatisticTypes$UserStatistics? manga;

  @override
  List<Object?> get props => [anime, manga];
  @override
  Map<String, dynamic> toJson() =>
      _$UserInfo$Query$User$UserStatisticTypesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query$User extends JsonSerializable with EquatableMixin {
  UserInfo$Query$User();

  factory UserInfo$Query$User.fromJson(Map<String, dynamic> json) =>
      _$UserInfo$Query$UserFromJson(json);

  late int id;

  late String name;

  UserInfo$Query$User$UserAvatar? avatar;

  String? bannerImage;

  UserInfo$Query$User$UserStatisticTypes? statistics;

  @override
  List<Object?> get props => [id, name, avatar, bannerImage, statistics];
  @override
  Map<String, dynamic> toJson() => _$UserInfo$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInfo$Query extends JsonSerializable with EquatableMixin {
  UserInfo$Query();

  factory UserInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$UserInfo$QueryFromJson(json);

  @JsonKey(name: 'Viewer')
  UserInfo$Query$User? viewer;

  @override
  List<Object?> get props => [viewer];
  @override
  Map<String, dynamic> toJson() => _$UserInfo$QueryToJson(this);
}

enum MediaStatus {
  @JsonValue('FINISHED')
  finished,
  @JsonValue('RELEASING')
  releasing,
  @JsonValue('NOT_YET_RELEASED')
  notYetReleased,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('HIATUS')
  hiatus,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum MediaFormat {
  @JsonValue('TV')
  tv,
  @JsonValue('TV_SHORT')
  tvShort,
  @JsonValue('MOVIE')
  movie,
  @JsonValue('SPECIAL')
  special,
  @JsonValue('OVA')
  ova,
  @JsonValue('ONA')
  ona,
  @JsonValue('MUSIC')
  music,
  @JsonValue('MANGA')
  manga,
  @JsonValue('NOVEL')
  novel,
  @JsonValue('ONE_SHOT')
  oneShot,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum MediaRelation {
  @JsonValue('ADAPTATION')
  adaptation,
  @JsonValue('PREQUEL')
  prequel,
  @JsonValue('SEQUEL')
  sequel,
  @JsonValue('PARENT')
  parent,
  @JsonValue('SIDE_STORY')
  sideStory,
  @JsonValue('CHARACTER')
  character,
  @JsonValue('SUMMARY')
  summary,
  @JsonValue('ALTERNATIVE')
  alternative,
  @JsonValue('SPIN_OFF')
  spinOff,
  @JsonValue('OTHER')
  other,
  @JsonValue('SOURCE')
  source,
  @JsonValue('COMPILATION')
  compilation,
  @JsonValue('CONTAINS')
  contains,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum MediaSeason {
  @JsonValue('WINTER')
  winter,
  @JsonValue('SPRING')
  spring,
  @JsonValue('SUMMER')
  summer,
  @JsonValue('FALL')
  fall,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum MediaType {
  @JsonValue('ANIME')
  anime,
  @JsonValue('MANGA')
  manga,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
final ALL_TIME_POPULAR_ANIME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllTimePopularAnime'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'ANIME'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'POPULARITY_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class AllTimePopularAnimeQuery
    extends GraphQLQuery<AllTimePopularAnime$Query, JsonSerializable> {
  AllTimePopularAnimeQuery();

  @override
  final DocumentNode document = ALL_TIME_POPULAR_ANIME_QUERY_DOCUMENT;

  @override
  final String operationName = 'AllTimePopularAnime';

  @override
  List<Object?> get props => [document, operationName];
  @override
  AllTimePopularAnime$Query parse(Map<String, dynamic> json) =>
      AllTimePopularAnime$Query.fromJson(json);
}

final ALL_TIME_POPULAR_MANGA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllTimePopularManga'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'MANGA'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'POPULARITY_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class AllTimePopularMangaQuery
    extends GraphQLQuery<AllTimePopularManga$Query, JsonSerializable> {
  AllTimePopularMangaQuery();

  @override
  final DocumentNode document = ALL_TIME_POPULAR_MANGA_QUERY_DOCUMENT;

  @override
  final String operationName = 'AllTimePopularManga';

  @override
  List<Object?> get props => [document, operationName];
  @override
  AllTimePopularManga$Query parse(Map<String, dynamic> json) =>
      AllTimePopularManga$Query.fromJson(json);
}

final ALL_TIME_POPULAR_MANHWA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllTimePopularManhwa'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'MANGA'))),
                    ArgumentNode(
                        name: NameNode(value: 'countryOfOrigin'),
                        value: EnumValueNode(name: NameNode(value: 'KR'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'POPULARITY_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class AllTimePopularManhwaQuery
    extends GraphQLQuery<AllTimePopularManhwa$Query, JsonSerializable> {
  AllTimePopularManhwaQuery();

  @override
  final DocumentNode document = ALL_TIME_POPULAR_MANHWA_QUERY_DOCUMENT;

  @override
  final String operationName = 'AllTimePopularManhwa';

  @override
  List<Object?> get props => [document, operationName];
  @override
  AllTimePopularManhwa$Query parse(Map<String, dynamic> json) =>
      AllTimePopularManhwa$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MediaInfoArguments extends JsonSerializable with EquatableMixin {
  MediaInfoArguments({this.id});

  @override
  factory MediaInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$MediaInfoArgumentsFromJson(json);

  final int? id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$MediaInfoArgumentsToJson(this);
}

final MEDIA_INFO_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'MediaInfo'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Media'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'english'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'romaji'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'native'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'coverImage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'large'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'bannerImage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'genres'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'favourites'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'averageScore'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'format'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'siteUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'startDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'year'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'month'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'day'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'endDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'year'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'month'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'day'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'studios'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'isMain'),
                        value: BooleanValueNode(value: true))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'episodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'duration'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'season'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'seasonYear'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'trailer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'site'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'nextAiringEpisode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'episode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'airingAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'chapters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'volumes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'relations'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'edges'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'relationType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'title'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name:
                                              NameNode(value: 'userPreferred'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'coverImage'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'large'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'recommendations'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'perPage'),
                        value: IntValueNode(value: '10'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'edges'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name:
                                        NameNode(value: 'mediaRecommendation'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'id'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'title'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'userPreferred'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'coverImage'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'large'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class MediaInfoQuery extends GraphQLQuery<MediaInfo$Query, MediaInfoArguments> {
  MediaInfoQuery({required this.variables});

  @override
  final DocumentNode document = MEDIA_INFO_QUERY_DOCUMENT;

  @override
  final String operationName = 'MediaInfo';

  @override
  final MediaInfoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  MediaInfo$Query parse(Map<String, dynamic> json) =>
      MediaInfo$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PopularCustomArguments extends JsonSerializable with EquatableMixin {
  PopularCustomArguments({this.season, this.seasonYear});

  @override
  factory PopularCustomArguments.fromJson(Map<String, dynamic> json) =>
      _$PopularCustomArgumentsFromJson(json);

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  final MediaSeason? season;

  final int? seasonYear;

  @override
  List<Object?> get props => [season, seasonYear];
  @override
  Map<String, dynamic> toJson() => _$PopularCustomArgumentsToJson(this);
}

final POPULAR_CUSTOM_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PopularCustom'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'season')),
            type: NamedTypeNode(
                name: NameNode(value: 'MediaSeason'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'seasonYear')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'ANIME'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'POPULARITY_DESC'))),
                    ArgumentNode(
                        name: NameNode(value: 'season'),
                        value: VariableNode(name: NameNode(value: 'season'))),
                    ArgumentNode(
                        name: NameNode(value: 'seasonYear'),
                        value:
                            VariableNode(name: NameNode(value: 'seasonYear')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class PopularCustomQuery
    extends GraphQLQuery<PopularCustom$Query, PopularCustomArguments> {
  PopularCustomQuery({required this.variables});

  @override
  final DocumentNode document = POPULAR_CUSTOM_QUERY_DOCUMENT;

  @override
  final String operationName = 'PopularCustom';

  @override
  final PopularCustomArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PopularCustom$Query parse(Map<String, dynamic> json) =>
      PopularCustom$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SearchDataArguments extends JsonSerializable with EquatableMixin {
  SearchDataArguments({this.page, this.perPage, this.search});

  @override
  factory SearchDataArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchDataArgumentsFromJson(json);

  final int? page;

  final int? perPage;

  final String? search;

  @override
  List<Object?> get props => [page, perPage, search];
  @override
  Map<String, dynamic> toJson() => _$SearchDataArgumentsToJson(this);
}

final SEARCH_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchData'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'page')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'perPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'search')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: VariableNode(name: NameNode(value: 'page'))),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: VariableNode(name: NameNode(value: 'perPage')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'total'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'currentPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'perPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'search'),
                        value: VariableNode(name: NameNode(value: 'search'))),
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'ANIME'))),
                    ArgumentNode(
                        name: NameNode(value: 'isAdult'),
                        value: BooleanValueNode(value: false))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'studios'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'isMain'),
                              value: BooleanValueNode(value: true))
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'format'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'averageScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'season'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'seasonYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'genres'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class SearchDataQuery
    extends GraphQLQuery<SearchData$Query, SearchDataArguments> {
  SearchDataQuery({required this.variables});

  @override
  final DocumentNode document = SEARCH_DATA_QUERY_DOCUMENT;

  @override
  final String operationName = 'SearchData';

  @override
  final SearchDataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SearchData$Query parse(Map<String, dynamic> json) =>
      SearchData$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class StudioInfoArguments extends JsonSerializable with EquatableMixin {
  StudioInfoArguments({this.id, this.page});

  @override
  factory StudioInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$StudioInfoArgumentsFromJson(json);

  final int? id;

  final int? page;

  @override
  List<Object?> get props => [id, page];
  @override
  Map<String, dynamic> toJson() => _$StudioInfoArgumentsToJson(this);
}

final STUDIO_INFO_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'StudioInfo'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'page')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Studio'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'page'),
                        value: VariableNode(name: NameNode(value: 'page'))),
                    ArgumentNode(
                        name: NameNode(value: 'perPage'),
                        value: IntValueNode(value: '24')),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'POPULARITY_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'pageInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'hasNextPage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'currentPage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'userPreferred'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'coverImage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'large'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class StudioInfoQuery
    extends GraphQLQuery<StudioInfo$Query, StudioInfoArguments> {
  StudioInfoQuery({required this.variables});

  @override
  final DocumentNode document = STUDIO_INFO_QUERY_DOCUMENT;

  @override
  final String operationName = 'StudioInfo';

  @override
  final StudioInfoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  StudioInfo$Query parse(Map<String, dynamic> json) =>
      StudioInfo$Query.fromJson(json);
}

final TOP_TEN_ANIME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopTenAnime'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'ANIME'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value:
                            EnumValueNode(name: NameNode(value: 'SCORE_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'popularity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class TopTenAnimeQuery
    extends GraphQLQuery<TopTenAnime$Query, JsonSerializable> {
  TopTenAnimeQuery();

  @override
  final DocumentNode document = TOP_TEN_ANIME_QUERY_DOCUMENT;

  @override
  final String operationName = 'TopTenAnime';

  @override
  List<Object?> get props => [document, operationName];
  @override
  TopTenAnime$Query parse(Map<String, dynamic> json) =>
      TopTenAnime$Query.fromJson(json);
}

final TOP_TEN_MANGA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopTenManga'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'MANGA'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value:
                            EnumValueNode(name: NameNode(value: 'SCORE_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'popularity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class TopTenMangaQuery
    extends GraphQLQuery<TopTenManga$Query, JsonSerializable> {
  TopTenMangaQuery();

  @override
  final DocumentNode document = TOP_TEN_MANGA_QUERY_DOCUMENT;

  @override
  final String operationName = 'TopTenManga';

  @override
  List<Object?> get props => [document, operationName];
  @override
  TopTenManga$Query parse(Map<String, dynamic> json) =>
      TopTenManga$Query.fromJson(json);
}

final TRENDING_ANIME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrendingAnime'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'ANIME'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'TRENDING_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'bannerImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class TrendingAnimeQuery
    extends GraphQLQuery<TrendingAnime$Query, JsonSerializable> {
  TrendingAnimeQuery();

  @override
  final DocumentNode document = TRENDING_ANIME_QUERY_DOCUMENT;

  @override
  final String operationName = 'TrendingAnime';

  @override
  List<Object?> get props => [document, operationName];
  @override
  TrendingAnime$Query parse(Map<String, dynamic> json) =>
      TrendingAnime$Query.fromJson(json);
}

final TRENDING_MANGA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrendingManga'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: IntValueNode(value: '1')),
              ArgumentNode(
                  name: NameNode(value: 'perPage'),
                  value: IntValueNode(value: '10'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'media'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'MANGA'))),
                    ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(
                            name: NameNode(value: 'TRENDING_DESC')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'userPreferred'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'large'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'bannerImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class TrendingMangaQuery
    extends GraphQLQuery<TrendingManga$Query, JsonSerializable> {
  TrendingMangaQuery();

  @override
  final DocumentNode document = TRENDING_MANGA_QUERY_DOCUMENT;

  @override
  final String operationName = 'TrendingManga';

  @override
  List<Object?> get props => [document, operationName];
  @override
  TrendingManga$Query parse(Map<String, dynamic> json) =>
      TrendingManga$Query.fromJson(json);
}

final USER_INFO_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UserInfo'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Viewer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'medium'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'bannerImage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'statistics'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'anime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'episodesWatched'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'minutesWatched'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'chaptersRead'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'volumesRead'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'scores'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'sort'),
                                    value: EnumValueNode(
                                        name:
                                            NameNode(value: 'MEAN_SCORE_DESC')))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'score'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'genres'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'limit'),
                                    value: IntValueNode(value: '5'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'genre'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'tags'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'limit'),
                                    value: IntValueNode(value: '5'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'tag'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'manga'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'episodesWatched'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'minutesWatched'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'chaptersRead'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'volumesRead'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'scores'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'sort'),
                                    value: EnumValueNode(
                                        name:
                                            NameNode(value: 'MEAN_SCORE_DESC')))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'score'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'genres'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'limit'),
                                    value: IntValueNode(value: '5'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'genre'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'tags'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'limit'),
                                    value: IntValueNode(value: '5'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'tag'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'count'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class UserInfoQuery extends GraphQLQuery<UserInfo$Query, JsonSerializable> {
  UserInfoQuery();

  @override
  final DocumentNode document = USER_INFO_QUERY_DOCUMENT;

  @override
  final String operationName = 'UserInfo';

  @override
  List<Object?> get props => [document, operationName];
  @override
  UserInfo$Query parse(Map<String, dynamic> json) =>
      UserInfo$Query.fromJson(json);
}
