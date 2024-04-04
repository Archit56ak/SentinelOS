import 'package:flutter/material.dart';
import 'package:sentinel/Screens/HomePage.dart';
import 'package:sentinel/Screens/LoginPage.dart';
import 'package:sentinel/Screens/WelcomePage.dart';
import 'package:sentinel/Screens/entrypoint.dart';

void main() {
  runApp(const Sentinel());
}

class Sentinel extends StatelessWidget {
  const Sentinel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        WelcomePage.id: (context) => const WelcomePage(),
        EntryPoint.id: (context)=> const EntryPoint(),
      },
    );
  }
}
