// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.amber,
            ),
            title: Text(
              "Home Page",
              style: TextStyle(color: Colors.amber),
            ),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.amber[300],
        ),
      ),
    );
  }
}
