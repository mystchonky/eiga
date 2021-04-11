import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'e_oauth2_client.dart';

class EigaGraphQLClient {
  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co/',
  );
  AuthLink authLink;
  Link link;
  ValueNotifier<GraphQLClient> client;
  final memCache = GraphQLCache();

  EigaGraphQLClient(EigaOAuth2Client eClient) {
    authLink = AuthLink(
      getToken: () async =>
          'Bearer ${(await eClient.getTokenFromStorage()).accessToken}',
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
