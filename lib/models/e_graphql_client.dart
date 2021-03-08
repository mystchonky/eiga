import 'package:eiga/models/e_oauth2_client.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class EigaGraphQLClient {
  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co/',
  );
  AuthLink authLink;
  Link link;
  ValueNotifier<GraphQLClient> client;
  final memCache = GraphQLCache();

  EigaGraphQLClient(EigaOAuth2Client e_client) {
    authLink = AuthLink(
      getToken: () async =>
          'Bearer ' + (await e_client.getTokenFromStorage()).accessToken,
    );

    link = authLink.concat(httpLink);

    client = ValueNotifier(
      GraphQLClient(
        cache: memCache,
        link: link,
      ),
    );
  }
}