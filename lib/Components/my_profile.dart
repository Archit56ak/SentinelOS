import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myProfile extends StatelessWidget {
  const myProfile({
    super.key,
    required this.name,
    required this.emailId,
  });
  final String name, emailId;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(emailId),
      subtitleTextStyle: TextStyle(color: Colors.white38),
    );
  }
}
