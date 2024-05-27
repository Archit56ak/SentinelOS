import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData? icons;
  final String lable;
  const MyTextField(
      {key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icons,
      required this.lable});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      validator: (val) => val!.isEmpty ? 'Please enter your Email-ID' : null,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: lable,
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(icons),
          prefixIconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.circular(15)),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: false,
          // hintText: hintText,
          iconColor: Color.fromARGB(255, 255, 255, 255),
          hintStyle: TextStyle(color: Color.fromARGB(255, 254, 254, 254))),
    );
  }
}

class MyPasswordTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icons;
  const MyPasswordTextField(
      {key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      validator: (val) => val!.isEmpty ? 'Please enter your Password' : null,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.white),
          prefixIconColor: Colors.white,
          prefixIcon: Icon(icons),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.circular(15)),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: false,
          // hintText: hintText,
          hintStyle:
              TextStyle(color: const Color.fromARGB(255, 255, 254, 254))),
    );
  }
}
