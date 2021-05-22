import 'package:flutter/material.dart';

import '../classes/e_oauth2_client.dart';

class LoginPrompt extends StatelessWidget {
  final EigaOAuth2Client eigaOAuth2Client;

  const LoginPrompt({Key? key, required this.eigaOAuth2Client})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                await eigaOAuth2Client.generateToken();
                Navigator.popAndPushNamed(context, '_app');
              },
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 36),
              )),
        ),
      ),
    );
  }
}
