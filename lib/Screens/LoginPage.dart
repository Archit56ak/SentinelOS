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
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration:
                BoxDecoration(color: const Color.fromARGB(0, 33, 33, 33)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    image: DecorationImage(
                        image: AssetImage("assets/SOS.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.22,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(0, 166, 152, 152),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Enter your credentials",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      ),
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
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
