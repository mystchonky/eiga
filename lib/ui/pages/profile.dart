import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final VoidCallback logout;

  const Profile({Key key, @required this.logout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(child: Text("Logout"), onPressed: logout ),);
  }
}
