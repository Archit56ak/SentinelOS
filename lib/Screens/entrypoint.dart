// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:rive/rive.dart';
import 'package:sentinel/Features/IO_devices.dart';
import 'package:sentinel/Features/disk_encrypt.dart';
import 'package:sentinel/Features/firewall.dart';
import 'package:sentinel/Features/ips_ids.dart';
import 'package:sentinel/Screens/navBar.dart';

import '../Components/menu_btn.dart';
import 'HomePage.dart';

class EntryPoint extends StatefulWidget {
  static const id = 'Entrypoint';
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

List<Widget> screens = [
  HomePage(),
  Firewall(),
  IPS_IDS(),
  Disk_encrypt(),
  IPS_IDS(),
  IO_devices()
];

class _EntryPointState extends State<EntryPoint>
    with SingleTickerProviderStateMixin {
  bool isSideBarOpen = false;
  late SMIInput<bool> isMenuOpenInput;

  String stateMachineName = 'Menu Bar';
  //Used make the animation smooth
  late AnimationController _animationController;
  late Animation<double> scalAnimation;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
      ..addListener(() {
        setState(() {});
      });
    scalAnimation = Tween<double>(begin: 1, end: 0.9).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 500),
            left: isSideBarOpen ? 0 : -310,
            child: side_menu(),
            width: 310,
            height: MediaQuery.of(context).size.height * 1,
          ),
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(
                  1 * animation.value - 30 * (animation.value) * pi / 180),
            alignment: Alignment.center,
            child: Transform.translate(
                offset: Offset(animation.value * 210, 0),
                child: Transform.scale(
                    scale: scalAnimation.value,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      child: HomePage(),
                    ))),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            left: isSideBarOpen ? 310 : 0,
            top: 16,
            child: MenuBtn(
              riveOnInit: (Artboard) {
                final controller = StateMachineController.fromArtboard(
                    Artboard, "State Machine");

                Artboard.addController(controller!);

                isMenuOpenInput =
                    controller.findInput<bool>("isOpen") as SMIBool;
                isMenuOpenInput.value = true;
              },
              press: () {
                isMenuOpenInput.value = !isMenuOpenInput.value;
                if (_animationController.value == 0) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }
                setState(
                  () {
                    isSideBarOpen = !isSideBarOpen;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
