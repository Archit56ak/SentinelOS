// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:sentinel/Screens/HomePage.dart';
import 'package:sentinel/Screens/LoginPage.dart';

class WelcomePage extends StatefulWidget {
  static const id = 'Welcome_Page';
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //Go to Login Page
  _goToLoginPage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.popAndPushNamed(
      context,
      LoginPage.id,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _goToLoginPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/SOS1_vid.gif')),
              ),
            ),
          ],
        ));
  }
}
