// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
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

  String medium;

  @override
  List<Object> get props => [medium];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$MediaCoverImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio
    with EquatableMixin {
  AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio();

  factory AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioEdge$StudioFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioEdge$StudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$StudioConnection$StudioEdge with EquatableMixin {
  AnimeInfo$Query$Media$StudioConnection$StudioEdge();

  factory AnimeInfo$Query$Media$StudioConnection$StudioEdge.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioEdgeFromJson(json);

  AnimeInfo$Query$Media$StudioConnection$StudioEdge$Studio node;

  @override
  List<Object> get props => [node];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$StudioConnection$StudioEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInfo$Query$Media$StudioConnection with EquatableMixin {
  AnimeInfo$Query$Media$StudioConnection();

  factory AnimeInfo$Query$Media$StudioConnection.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeInfo$Query$Media$StudioConnectionFromJson(json);

  List<AnimeInfo$Query$Media$StudioConnection$StudioEdge> edges;

  @override
  List<Object> get props => [edges];
  Map<String, dynamic> toJson() =>
      _$AnimeInfo$Query$Media$StudioConnectionToJson(this);
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

  int averageScore;

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
        averageScore
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

  @override
  List<Object> get props => [id, title, coverImage];
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
                                name: NameNode(value: 'node'),
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
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'episodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'averageScore'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
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
                          ]))
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
