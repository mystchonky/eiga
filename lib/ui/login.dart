import 'package:eiga/models/e_oauth2_client.dart';
import 'package:flutter/material.dart';

class LoginPrompt extends StatelessWidget {
  final EigaOAuth2Client eigaOAuth2Client;

  const LoginPrompt({Key key, @required this.eigaOAuth2Client})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () async {
                  var tknResp = await eigaOAuth2Client.generateToken();
                  if (tknResp != null) {
                    Navigator.popAndPushNamed(context, '_app');
                  }
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 36, fontFamily: 'Rubik'),
                )),
          ),
        ),
      ),
    );
  }
}
