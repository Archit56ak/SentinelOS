// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentinel/Screens/HomePage.dart';
import 'package:sentinel/Screens/entrypoint.dart';

class MyButton extends StatefulWidget {
  const MyButton({key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    List<Color> isdark = [
      Colors.amber.shade600,
      Colors.amber.shade100,
    ];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EntryPoint()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.13,
        height: MediaQuery.of(context).size.height * 0.075,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(25),
            // boxShadow: const [
            //   BoxShadow(
            //       color: Color.fromARGB(255, 0, 0, 0),
            //       spreadRadius: 1,
            //       blurRadius: 8,
            //       offset: Offset(4, 4)),
            //   BoxShadow(
            //       color: Colors.white,
            //       spreadRadius: 1,
            //       blurRadius: 8,
            //       offset: Offset(-3, -3))
            // ],
            gradient: LinearGradient(
                colors: isdark,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.9])),
        child: const Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

class MyButtonAgree extends StatelessWidget {
  final Function() onTap;
  final String text;
  const MyButtonAgree({key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    List<Color> isdark = [
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(255, 102, 104, 105),
    ];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.075,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(4, 4)),
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(-3, -3))
            ],
            gradient: LinearGradient(
                colors: isdark,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.9])),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
