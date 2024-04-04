// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

import '../Screens/components/menu.dart';

class sideMenuTile extends StatelessWidget {
  const sideMenuTile({
    super.key,
    required this.menu,
    required this.press,
    required this.selectedMenu,
  });

  final Menu menu;
  final VoidCallback press;
  final Menu selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(color: Colors.white24, height: 1),
        ),
        Stack(
          children: [
            AnimatedPositioned(
                curve: Curves.fastOutSlowIn,
                height: MediaQuery.of(context).size.height * 0.065,
                width: selectedMenu == menu
                    ? MediaQuery.of(context).size.height * 0.41
                    : 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(182, 98, 98, 98),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                duration: Duration(milliseconds: 300)),
            ListTile(
              onTap: press,
              titleAlignment: ListTileTitleAlignment.center,
              leading: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                  width: MediaQuery.of(context).size.width * 0.035,
                  child: menu.featureimg),
              title: Text(
                menu.title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
