import 'package:flutter/material.dart';
import 'views/search_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final HttpLink httpLink = HttpLink(
    uri: 'https://graphql.anilist.co/',
  );

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  //   // OR
  //   // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  // );

  //final Link link = authLink.concat(httpLink);
  //final Link link = this.httpLink;

  ValueNotifier<GraphQLClient> client;

  App() {
    //link = httpLink;
    client = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: httpLink,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.dark,
          home: Scaffold(
            body: SafeArea(child: SearchPage()),
            resizeToAvoidBottomInset: false,
          ),
        ),
      ),
    );
  }
}
