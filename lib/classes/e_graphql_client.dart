import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'e_oauth2_client.dart';

class EigaGraphQLClient {
  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co/',
  );
  late AuthLink authLink;
  late Link link;
  late ValueNotifier<GraphQLClient> client;

  EigaGraphQLClient(EigaOAuth2Client eClient) {
    authLink = AuthLink(
      getToken: () async =>
          'Bearer ${(await eClient.getTokenFromStorage())!.accessToken}',
    );

    link = authLink.concat(httpLink);

    client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: HiveStore()),
        link: link,
      ),
    );
  }
}
