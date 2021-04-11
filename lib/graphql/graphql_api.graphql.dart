// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaTitle with EquatableMixin {
  AnimeInfo$Query$Media$MediaTitle();

  factory AnimeInfo$Query$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaTitleFromJson(json);

  String english;

  String romaji;

  String native;

  @override
  List<Object> get props => [english, romaji, native];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaCoverImage with EquatableMixin {
  AnimeInfo$Query$Media$MediaCoverImage();

  factory AnimeInfo$Query$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaCoverImageFromJson(json);

  String large;

  String color;

  @override
  List<Object> get props => [large, color];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$StudioConnection$Studio with EquatableMixin {
  AnimeInfo$Query$Media$StudioConnection$Studio();

  factory AnimeInfo$Query$Media$StudioConnection$Studio.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$StudioConnection with EquatableMixin {
  AnimeInfo$Query$Media$StudioConnection();

  factory AnimeInfo$Query$Media$StudioConnection.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$StudioConnectionFromJson(json);

  List<AnimeInfo$Query$Media$StudioConnection$Studio> nodes;

  @override
  List<Object> get props => [nodes];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$StudioConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$FuzzyDate with EquatableMixin {
  AnimeInfo$Query$Media$FuzzyDate();

  factory AnimeInfo$Query$Media$FuzzyDate.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$FuzzyDateFromJson(json);

  int year;

  int month;

  int day;

  @override
  List<Object> get props => [year, month, day];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$FuzzyDateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle
    with EquatableMixin {
  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle();

  factory AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleFromJson(
          json);

  String userPreferred;

  @override
  List<Object> get props => [userPreferred];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitleToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
    with EquatableMixin {
  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage();

  factory AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageFromJson(
          json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media
    with EquatableMixin {
  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media();

  factory AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$MediaFromJson(json);

  int id;

  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaTitle title;

  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media$MediaCoverImage
      coverImage;

  @override
  List<Object> get props => [id, title, coverImage];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdge$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaConnection$MediaEdge with EquatableMixin {
  AnimeInfo$Query$Media$MediaConnection$MediaEdge();

  factory AnimeInfo$Query$Media$MediaConnection$MediaEdge.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdgeFromJson(json);

  @JsonKey(unknownEnumValue: MediaRelation.artemisUnknown)
  MediaRelation relationType;

  AnimeInfo$Query$Media$MediaConnection$MediaEdge$Media node;

  @override
  List<Object> get props => [relationType, node];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaConnection$MediaEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$MediaConnection with EquatableMixin {
  AnimeInfo$Query$Media$MediaConnection();

  factory AnimeInfo$Query$Media$MediaConnection.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$MediaConnectionFromJson(json);

  List<AnimeInfo$Query$Media$MediaConnection$MediaEdge> edges;

  @override
  List<Object> get props => [edges];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media with EquatableMixin {
  AnimeInfo$Query$Media();

  factory AnimeInfo$Query$Media.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfo$Query$MediaFromJson(json);

  int id;

  AnimeInfo$Query$Media$MediaTitle title;

  AnimeInfo$Query$Media$MediaCoverImage coverImage;

  String bannerImage;

  String description;

  List<String> genres;

  AnimeInfo$Query$Media$StudioConnection studios;

  int episodes;

  int popularity;

  int favourites;

  int averageScore;

  @JsonKey(unknownEnumValue: MediaFormat.artemisUnknown)
  MediaFormat format;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus status;

  int duration;

  AnimeInfo$Query$Media$FuzzyDate startDate;

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  MediaSeason season;

  int seasonYear;

  AnimeInfo$Query$Media$MediaConnection relations;

  @override
  List<Object> get props => [
        id,
        title,
        coverImage,
        bannerImage,
        description,
        genres,
        studios,
        episodes,
        popularity,
        favourites,
        averageScore,
        format,
        status,
        duration,
        startDate,
        season,
        seasonYear,
        relations
      ];
  Map<String, dynamic> toJson() => _$AnimeInfo$Query$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query with EquatableMixin {
  AnimeInfo$Query();

  factory AnimeInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfo$QueryFromJson(json);

  @JsonKey(name: 'Media')
  AnimeInfo$Query$Media media;

  @override
  List<Object> get props => [media];
  Map<String, dynamic> toJson() => _$AnimeInfo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media$MediaTitle with EquatableMixin {
  PopularCustom$Query$Page$Media$MediaTitle();

  factory PopularCustom$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$Media$MediaTitleFromJson(json);

  String userPreferred;

  @override
  List<Object> get props => [userPreferred];
  Map<String, dynamic> toJson() =>
      _$PopularCustom$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media$MediaCoverImage with EquatableMixin {
  PopularCustom$Query$Page$Media$MediaCoverImage();

  factory PopularCustom$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$Media$MediaCoverImageFromJson(json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$PopularCustom$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page$Media with EquatableMixin {
  PopularCustom$Query$Page$Media();

  factory PopularCustom$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$Query$Page$MediaFromJson(json);

  int id;

  PopularCustom$Query$Page$Media$MediaTitle title;

  int episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus status;

  PopularCustom$Query$Page$Media$MediaCoverImage coverImage;

  @override
  List<Object> get props => [id, title, episodes, status, coverImage];
  Map<String, dynamic> toJson() => _$PopularCustom$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query$Page with EquatableMixin {
  PopularCustom$Query$Page();

  factory PopularCustom$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$Query$PageFromJson(json);

  List<PopularCustom$Query$Page$Media> media;

  @override
  List<Object> get props => [media];
  Map<String, dynamic> toJson() => _$PopularCustom$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularCustom$Query with EquatableMixin {
  PopularCustom$Query();

  factory PopularCustom$Query.fromJson(Map<String, dynamic> json) =>
      _$PopularCustom$QueryFromJson(json);

  @JsonKey(name: 'Page')
  PopularCustom$Query$Page page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$PopularCustom$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$PageInfo with EquatableMixin {
  SearchData$Query$Page$PageInfo();

  factory SearchData$Query$Page$PageInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$Page$PageInfoFromJson(json);

  int total;

  int currentPage;

  int lastPage;

  bool hasNextPage;

  int perPage;

  @override
  List<Object> get props =>
      [total, currentPage, lastPage, hasNextPage, perPage];
  Map<String, dynamic> toJson() => _$SearchData$Query$Page$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$MediaTitle with EquatableMixin {
  SearchData$Query$Page$Media$MediaTitle();

  factory SearchData$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$MediaTitleFromJson(json);

  String english;

  String romaji;

  String native;

  @override
  List<Object> get props => [english, romaji, native];
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media$MediaCoverImage with EquatableMixin {
  SearchData$Query$Page$Media$MediaCoverImage();

  factory SearchData$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$SearchData$Query$Page$Media$MediaCoverImageFromJson(json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$SearchData$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page$Media with EquatableMixin {
  SearchData$Query$Page$Media();

  factory SearchData$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$Page$MediaFromJson(json);

  int id;

  SearchData$Query$Page$Media$MediaTitle title;

  SearchData$Query$Page$Media$MediaCoverImage coverImage;

  @JsonKey(unknownEnumValue: MediaFormat.artemisUnknown)
  MediaFormat format;

  int averageScore;

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  MediaSeason season;

  int seasonYear;

  int episodes;

  @override
  List<Object> get props => [
        id,
        title,
        coverImage,
        format,
        averageScore,
        season,
        seasonYear,
        episodes
      ];
  Map<String, dynamic> toJson() => _$SearchData$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query$Page with EquatableMixin {
  SearchData$Query$Page();

  factory SearchData$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$SearchData$Query$PageFromJson(json);

  SearchData$Query$Page$PageInfo pageInfo;

  List<SearchData$Query$Page$Media> media;

  @override
  List<Object> get props => [pageInfo, media];
  Map<String, dynamic> toJson() => _$SearchData$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData$Query with EquatableMixin {
  SearchData$Query();

  factory SearchData$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchData$QueryFromJson(json);

  @JsonKey(name: 'Page')
  SearchData$Query$Page page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$SearchData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Trending$Query$Page$Media$MediaTitle with EquatableMixin {
  Trending$Query$Page$Media$MediaTitle();

  factory Trending$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$Trending$Query$Page$Media$MediaTitleFromJson(json);

  String userPreferred;

  @override
  List<Object> get props => [userPreferred];
  Map<String, dynamic> toJson() =>
      _$Trending$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Trending$Query$Page$Media$MediaCoverImage with EquatableMixin {
  Trending$Query$Page$Media$MediaCoverImage();

  factory Trending$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Trending$Query$Page$Media$MediaCoverImageFromJson(json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$Trending$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Trending$Query$Page$Media with EquatableMixin {
  Trending$Query$Page$Media();

  factory Trending$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$Trending$Query$Page$MediaFromJson(json);

  int id;

  Trending$Query$Page$Media$MediaTitle title;

  int episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus status;

  Trending$Query$Page$Media$MediaCoverImage coverImage;

  String bannerImage;

  @override
  List<Object> get props =>
      [id, title, episodes, status, coverImage, bannerImage];
  Map<String, dynamic> toJson() => _$Trending$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Trending$Query$Page with EquatableMixin {
  Trending$Query$Page();

  factory Trending$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$Trending$Query$PageFromJson(json);

  List<Trending$Query$Page$Media> media;

  @override
  List<Object> get props => [media];
  Map<String, dynamic> toJson() => _$Trending$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Trending$Query with EquatableMixin {
  Trending$Query();

  factory Trending$Query.fromJson(Map<String, dynamic> json) =>
      _$Trending$QueryFromJson(json);

  @JsonKey(name: 'Page')
  Trending$Query$Page page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$Trending$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopular$Query$Page$Media$MediaTitle with EquatableMixin {
  AllTimePopular$Query$Page$Media$MediaTitle();

  factory AllTimePopular$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopular$Query$Page$Media$MediaTitleFromJson(json);

  String userPreferred;

  @override
  List<Object> get props => [userPreferred];
  Map<String, dynamic> toJson() =>
      _$AllTimePopular$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopular$Query$Page$Media$MediaCoverImage with EquatableMixin {
  AllTimePopular$Query$Page$Media$MediaCoverImage();

  factory AllTimePopular$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$AllTimePopular$Query$Page$Media$MediaCoverImageFromJson(json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$AllTimePopular$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopular$Query$Page$Media with EquatableMixin {
  AllTimePopular$Query$Page$Media();

  factory AllTimePopular$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopular$Query$Page$MediaFromJson(json);

  int id;

  AllTimePopular$Query$Page$Media$MediaTitle title;

  int episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus status;

  AllTimePopular$Query$Page$Media$MediaCoverImage coverImage;

  @override
  List<Object> get props => [id, title, episodes, status, coverImage];
  Map<String, dynamic> toJson() =>
      _$AllTimePopular$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopular$Query$Page with EquatableMixin {
  AllTimePopular$Query$Page();

  factory AllTimePopular$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopular$Query$PageFromJson(json);

  List<AllTimePopular$Query$Page$Media> media;

  @override
  List<Object> get props => [media];
  Map<String, dynamic> toJson() => _$AllTimePopular$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllTimePopular$Query with EquatableMixin {
  AllTimePopular$Query();

  factory AllTimePopular$Query.fromJson(Map<String, dynamic> json) =>
      _$AllTimePopular$QueryFromJson(json);

  @JsonKey(name: 'Page')
  AllTimePopular$Query$Page page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$AllTimePopular$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTen$Query$Page$Media$MediaTitle with EquatableMixin {
  TopTen$Query$Page$Media$MediaTitle();

  factory TopTen$Query$Page$Media$MediaTitle.fromJson(
          Map<String, dynamic> json) =>
      _$TopTen$Query$Page$Media$MediaTitleFromJson(json);

  String userPreferred;

  @override
  List<Object> get props => [userPreferred];
  Map<String, dynamic> toJson() =>
      _$TopTen$Query$Page$Media$MediaTitleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTen$Query$Page$Media$MediaCoverImage with EquatableMixin {
  TopTen$Query$Page$Media$MediaCoverImage();

  factory TopTen$Query$Page$Media$MediaCoverImage.fromJson(
          Map<String, dynamic> json) =>
      _$TopTen$Query$Page$Media$MediaCoverImageFromJson(json);

  String large;

  @override
  List<Object> get props => [large];
  Map<String, dynamic> toJson() =>
      _$TopTen$Query$Page$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTen$Query$Page$Media with EquatableMixin {
  TopTen$Query$Page$Media();

  factory TopTen$Query$Page$Media.fromJson(Map<String, dynamic> json) =>
      _$TopTen$Query$Page$MediaFromJson(json);

  int id;

  TopTen$Query$Page$Media$MediaTitle title;

  int popularity;

  int episodes;

  @JsonKey(unknownEnumValue: MediaStatus.artemisUnknown)
  MediaStatus status;

  TopTen$Query$Page$Media$MediaCoverImage coverImage;

  @override
  List<Object> get props =>
      [id, title, popularity, episodes, status, coverImage];
  Map<String, dynamic> toJson() => _$TopTen$Query$Page$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTen$Query$Page with EquatableMixin {
  TopTen$Query$Page();

  factory TopTen$Query$Page.fromJson(Map<String, dynamic> json) =>
      _$TopTen$Query$PageFromJson(json);

  List<TopTen$Query$Page$Media> media;

  @override
  List<Object> get props => [media];
  Map<String, dynamic> toJson() => _$TopTen$Query$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TopTen$Query with EquatableMixin {
  TopTen$Query();

  factory TopTen$Query.fromJson(Map<String, dynamic> json) =>
      _$TopTen$QueryFromJson(json);

  @JsonKey(name: 'Page')
  TopTen$Query$Page page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$TopTen$QueryToJson(this);
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

@JsonSerializable(explicitToJson: true)
class AnimeInfoArguments extends JsonSerializable with EquatableMixin {
  AnimeInfoArguments({this.id});

  @override
  factory AnimeInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoArgumentsFromJson(json);

  final int id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$AnimeInfoArgumentsToJson(this);
}

class AnimeInfoQuery extends GraphQLQuery<AnimeInfo$Query, AnimeInfoArguments> {
  AnimeInfoQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'AnimeInfo'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
                    value: VariableNode(name: NameNode(value: 'id'))),
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
                    name: NameNode(value: 'episodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'popularity'),
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
                    name: NameNode(value: 'duration'),
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
  ]);

  @override
  final String operationName = 'AnimeInfo';

  @override
  final AnimeInfoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AnimeInfo$Query parse(Map<String, dynamic> json) =>
      AnimeInfo$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PopularCustomArguments extends JsonSerializable with EquatableMixin {
  PopularCustomArguments({this.season, this.seasonYear});

  @override
  factory PopularCustomArguments.fromJson(Map<String, dynamic> json) =>
      _$PopularCustomArgumentsFromJson(json);

  @JsonKey(unknownEnumValue: MediaSeason.artemisUnknown)
  final MediaSeason season;

  final int seasonYear;

  @override
  List<Object> get props => [season, seasonYear];
  @override
  Map<String, dynamic> toJson() => _$PopularCustomArgumentsToJson(this);
}

class PopularCustomQuery
    extends GraphQLQuery<PopularCustom$Query, PopularCustomArguments> {
  PopularCustomQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
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
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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

  @override
  final String operationName = 'PopularCustom';

  @override
  final PopularCustomArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
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

  final int page;

  final int perPage;

  final String search;

  @override
  List<Object> get props => [page, perPage, search];
  @override
  Map<String, dynamic> toJson() => _$SearchDataArgumentsToJson(this);
}

class SearchDataQuery
    extends GraphQLQuery<SearchData$Query, SearchDataArguments> {
  SearchDataQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'SearchData'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'perPage')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
                                selectionSet: null)
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
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'SearchData';

  @override
  final SearchDataArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SearchData$Query parse(Map<String, dynamic> json) =>
      SearchData$Query.fromJson(json);
}

class TrendingQuery extends GraphQLQuery<Trending$Query, JsonSerializable> {
  TrendingQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Trending'),
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

  @override
  final String operationName = 'Trending';

  @override
  List<Object> get props => [document, operationName];
  @override
  Trending$Query parse(Map<String, dynamic> json) =>
      Trending$Query.fromJson(json);
}

class AllTimePopularQuery
    extends GraphQLQuery<AllTimePopular$Query, JsonSerializable> {
  AllTimePopularQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'AllTimePopular'),
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

  @override
  final String operationName = 'AllTimePopular';

  @override
  List<Object> get props => [document, operationName];
  @override
  AllTimePopular$Query parse(Map<String, dynamic> json) =>
      AllTimePopular$Query.fromJson(json);
}

class TopTenQuery extends GraphQLQuery<TopTen$Query, JsonSerializable> {
  TopTenQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'TopTen'),
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
                              name: NameNode(value: 'SCORE_DESC')))
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

  @override
  final String operationName = 'TopTen';

  @override
  List<Object> get props => [document, operationName];
  @override
  TopTen$Query parse(Map<String, dynamic> json) => TopTen$Query.fromJson(json);
}
