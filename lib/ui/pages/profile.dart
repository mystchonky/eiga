import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final VoidCallback logout;

  const Profile({required this.logout});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: logout,
        child: Text("Logout"),
      ),
    );
  }
}
