import 'package:eiga/classes/oauth2_client.dart';
import 'package:flutter/material.dart';

class LoginPrompt extends StatelessWidget {
  final CustomOAuth2Client oAuth2Client;

  const LoginPrompt({Key? key, required this.oAuth2Client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await oAuth2Client.generateToken().whenComplete(
                    () => Navigator.popAndPushNamed(context, 'validator'),
                  );
            },
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: 36),
            ),
          ),
        ),
      ),
    );
  }
}
