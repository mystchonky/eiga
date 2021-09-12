import 'package:flutter/material.dart';

import '../classes/graphql_client.dart';
import '../classes/oauth2_client.dart';
import 'login.dart';
import 'scaffold.dart';

class App extends StatelessWidget {
  late final CustomOAuth2Client oauth2Client;
  late final CustomGraphQLClient gqlClient;

  App() {
    oauth2Client = CustomOAuth2Client();
    gqlClient = CustomGraphQLClient(oauth2Client);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO Better Routing
      initialRoute: 'validator',
      routes: {
        'validator': (context) => TokenValidator(oauth2Client),
        'scaffold': (context) => CustomScaffold(
              gqlClient: gqlClient,
              oauth2Client: oauth2Client,
            ),
        'login': (context) => LoginPrompt(
              oAuth2Client: oauth2Client,
            )
      },
    );
  }
}

class TokenValidator extends StatelessWidget {
  final CustomOAuth2Client client;
  late final bool tokenValid;

  TokenValidator(this.client) {
    checkTokenValid();
  }

  Future<void> checkTokenValid() async {
    tokenValid = await client.getTokenFromStorage() != null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: client.getTokenFromStorage(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            Future.delayed(Duration.zero, () {
              Navigator.popAndPushNamed(context, 'scaffold');
            });
          } else {
            Future.delayed(Duration.zero, () {
              Navigator.popAndPushNamed(context, 'login');
            });
          }

          return Container();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
