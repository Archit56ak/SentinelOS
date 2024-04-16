// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sentinel/Features/IO_devices.dart';
import 'package:sentinel/Features/disk_encrypt.dart';
import 'package:sentinel/Features/firewall.dart';
import 'package:sentinel/Features/ips_ids.dart';
import 'package:sentinel/Screens/HomePage.dart';

class Menu {
  final String title;
  final Image featureimg;
  final Widget routeID;
  Menu({required this.title, required this.featureimg, required this.routeID});
}

List<Menu> sideBarMenu = [
  Menu(
    title: "Home",
    featureimg: Image(image: AssetImage("assets/Feature Icons/home.png")),
    routeID: HomePage(),
  ),
  Menu(
    title: "Firewall",
    featureimg: Image(image: AssetImage("assets/Feature Icons/firewall.png")),
    routeID: Firewall(),
  ),
  Menu(
      title: "IDS/IPS",
      featureimg: Image(image: AssetImage("assets/Feature Icons/ips.png")),
      routeID: IPS_IDS()),
  Menu(
      title: "Disk Encryption",
      featureimg: Image(image: AssetImage("assets/Feature Icons/encrypt.png")),
      routeID: Disk_encrypt()),
  Menu(
      title: "Secure Bootloader",
      featureimg: Image(image: AssetImage("assets/Feature Icons/secure.png")),
      routeID: IPS_IDS()),
  Menu(
      title: "I/O Devices",
      featureimg: Image(image: AssetImage("assets/Feature Icons/usb.png")),
      routeID: IO_devices())
];
