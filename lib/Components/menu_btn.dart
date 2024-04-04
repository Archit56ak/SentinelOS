// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MenuBtn extends StatelessWidget {
  const MenuBtn({
    super.key,
    required this.riveOnInit,
    required this.press,
  });
  final VoidCallback press;
  final ValueChanged<Artboard> riveOnInit;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: press,
        child: Container(
          margin: EdgeInsets.all(10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 3), blurRadius: 8)
              ]),
          child: RiveAnimation.asset(
            'assets/menu_button.riv',
            onInit: riveOnInit,
            stateMachines: ['Menu Bar'],
          ),
        ),
      ),
    );
  }
}
