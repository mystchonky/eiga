// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

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

  String medium;

  @override
  List<Object> get props => [medium];
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
                          value: EnumValueNode(name: NameNode(value: 'ANIME')))
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
