import 'package:eiga/models/e_graphql_client.dart';
import 'package:eiga/models/e_oauth2_client.dart';
import 'package:eiga/ui/e_scaffold.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  EigaOAuth2Client e_oauth2_client = EigaOAuth2Client();
  EigaGraphQLClient e_gql_client;

  App() {
    e_gql_client = EigaGraphQLClient(e_oauth2_client);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '_app',
      routes: {
        '_app': (context) => _app(e_oauth2_client),
        'scaffold': (context) => EigaScaffold(
              gql_client: e_gql_client,
              oauth2_client: e_oauth2_client,
            ),
        'login': (context) =>
            MaterialApp(home: Container(child: Center(child: Text("Login"))))
      },
    );
  }
}

class _app extends StatelessWidget {
  final EigaOAuth2Client client;
  bool tokenValid;

  _app(this.client) {
    checkTokenValid();
  }

  checkTokenValid() async {
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
        });
  }
}
