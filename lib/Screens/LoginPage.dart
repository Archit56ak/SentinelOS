// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sentinel/Components/my_button.dart';
import 'package:sentinel/Components/text_field.dart';

class LoginPage extends StatefulWidget {
  static const id = 'LoginPage';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome to SENTINEL-OS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(110, 152, 140, 140),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      MyTextField(
                          hintText: "Username",
                          obscureText: false,
                          icons: Icons.person_2_outlined),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      MyPasswordTextField(
                          hintText: "Password",
                          obscureText: true,
                          icons: Icons.password),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      MyButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.445,
            width: MediaQuery.of(context).size.width * 0.41,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  image: AssetImage("assets/SOS_vid.gif"), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
