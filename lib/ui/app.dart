import 'package:eiga/classes/adapters/library_item.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../classes/e_graphql_client.dart';
import '../classes/e_oauth2_client.dart';
import 'e_scaffold.dart';
import 'login.dart';

// ignore: must_be_immutable
class App extends StatelessWidget {
  final EigaOAuth2Client eOAuth2Client = EigaOAuth2Client();
  EigaGraphQLClient? eGQLClient;

  App() {
    init();
  }

  Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(HiveStore.defaultBoxName);
    eGQLClient = EigaGraphQLClient(eOAuth2Client);

    Hive.registerAdapter(LibraryItemAdapter());
    Hive.openBox<LibraryItem>('library');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO Better Routing
      initialRoute: '_app',
      routes: {
        '_app': (context) => _App(eOAuth2Client),
        'scaffold': (context) => EigaScaffold(
              gqlClient: eGQLClient!,
              oauth2Client: eOAuth2Client,
            ),
        'login': (context) => LoginPrompt(
              eigaOAuth2Client: eOAuth2Client,
            )
      },
    );
  }
}

// ignore: must_be_immutable
class _App extends StatelessWidget {
  final EigaOAuth2Client client;
  bool? tokenValid;

  _App(this.client) {
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
        });
  }
}
