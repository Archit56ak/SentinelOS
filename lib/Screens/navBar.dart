// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';

import 'package:sentinel/Screens/components/menu.dart';

import '../Components/my_profile.dart';
import '../Components/side_menu_tile.dart';

class side_menu extends StatefulWidget {
  const side_menu({super.key});

  @override
  State<side_menu> createState() => _side_menuState();
}

class _side_menuState extends State<side_menu> {
  bool selected = false;
  Menu selectedSideMenu = sideBarMenu.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 1,
        color: const Color.fromARGB(255, 0, 0, 0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myProfile(
              name: "Archit Kothawade",
              emailId: "vishwajit.archit21@vit.edu",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: Text(
                "Features".toUpperCase(),
                style: TextStyle(color: Colors.white70),
              ),
            ),
            ...sideBarMenu
                .map((menu) => sideMenuTile(
                    menu: menu,
                    press: () {
                      setState(() {
                        selectedSideMenu = menu;
                        // print(curr);
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => menu.routeID));
                    },
                    selectedMenu: selectedSideMenu))
                .toList(),
          ],
        )),
      ),
    );
  }
}




// sideMenuTile(
//               Title: "Firewall",
//               press: () {
//                 setState(() {
//                   selected = (selected == true) ? false : true;
//                 });
//               },
//               isActive: selected,
//               featureImg:
//                   Image(image: AssetImage("assets/Feature Icons/firewall.png")),
//             ),
//             sideMenuTile(
//                 Title: "IDS/IPS",
//                 press: () {
//                   setState(() {
//                     selected = (selected == true) ? false : true;
//                   });
//                 },
//                 isActive: selected,
//                 featureImg:
//                     Image(image: AssetImage("assets/Feature Icons/ips.png"))),
//             sideMenuTile(
//                 Title: "Disk Encryption",
//                 press: () {
//                   setState(() {
//                     selected = (selected == true) ? false : true;
//                   });
//                 },
//                 isActive: selected,
//                 featureImg: Image(
//                     image: AssetImage("assets/Feature Icons/encrypt.png"))),
//             sideMenuTile(
//                 Title: "Secure Bootloader",
//                 press: () {
//                   setState(() {
//                     selected = (selected == true) ? false : true;
//                   });
//                 },
//                 isActive: selected,
//                 featureImg: Image(
//                     image: AssetImage("assets/Feature Icons/secure.png"))),
//             sideMenuTile(
//                 Title: "I/O Devices",
//                 press: () {
//                   selected = (selected == true) ? false : true;
//                 },
//                 isActive: selected,
//                 featureImg:
//                     Image(image: AssetImage("assets/Feature Icons/usb.png"))),