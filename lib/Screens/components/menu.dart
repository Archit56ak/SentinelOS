// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Menu {
  final String title;
  final Image featureimg;
  Menu({required this.title, required this.featureimg});
}

List<Menu> sideBarMenu = [
  Menu(
      title: "Firewall",
      featureimg:
          Image(image: AssetImage("assets/Feature Icons/firewall.png"))),
  Menu(
      title: "IDS/IPS",
      featureimg: Image(image: AssetImage("assets/Feature Icons/ips.png"))),
  Menu(
      title: "Disk Encryption",
      featureimg: Image(image: AssetImage("assets/Feature Icons/encrypt.png"))),
  Menu(
      title: "Secure Bootloader",
      featureimg: Image(image: AssetImage("assets/Feature Icons/secure.png"))),
  Menu(
      title: "I/O Devices",
      featureimg: Image(image: AssetImage("assets/Feature Icons/usb.png")))
];
