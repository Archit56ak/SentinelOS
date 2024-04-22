// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class IO_devices extends StatefulWidget {
  const IO_devices({super.key});

  @override
  State<IO_devices> createState() => _IO_devicesState();
}

class _IO_devicesState extends State<IO_devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "IO Devices",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ListTile(
                  title: Text("USB Blocking"),
                  titleTextStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  subtitle: Text(
                      "USB Blocking is a security measure to restricts or prevents the use of USB Devices."),
                  trailing: LiteRollingSwitch(
                    value: true,
                    width: 115,
                    textSize: 12,
                    textOn: 'ENABLE',
                    textOff: 'DISABLE',
                    textOffColor: Colors.white,
                    textOnColor: Colors.white,
                    colorOn: Color.fromARGB(255, 0, 0, 0),
                    colorOff: const Color.fromARGB(255, 0, 0, 0),
                    iconOn: Icons.lightbulb_outline,
                    iconOff: Icons.power_settings_new,
                    animationDuration: const Duration(milliseconds: 300),
                    onTap: () {
                      showAboutDialog(context: context);
                    },
                    onDoubleTap: () {},
                    onSwipe: () {},
                    onChanged: (bool state) {
                      print("The button is working");

                      // runIPSScript();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    AlertDialog alert = AlertDialog(
      title: const Text("USB Blocking"),
      content: Text("Are you sure?"),
      actions: [
        TextButton(
          onPressed: null,
          child: const Text('Ok'),
        ),
        TextButton(
          onPressed: null,
          child: const Text('Cancel'),
        ),
      ],
    );

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
