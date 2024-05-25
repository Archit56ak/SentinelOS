// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

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
          color: Colors.amber,
        ),
        title: Text(
          "IO Devices",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.amber[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Colors.grey[900],
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
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  subtitle: Text(
                    "USB Blocking is a security measure to restricts or prevents the use of USB Devices.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(180, 60),
                        textStyle: const TextStyle(
                            fontFamily: "Cascadia Code",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    label: const Text("Enable"),
                    icon: Icon(Icons.admin_panel_settings_outlined),
                    onPressed: () {
                      showAlertDialog(context);
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
          onPressed: () {},
          child: const Text('Ok'),
        ),
        TextButton(
          onPressed: () {},
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


// LiteRollingSwitch(
//                     value: false,
//                     width: 115,
//                     textSize: 12,
//                     textOn: 'ENABLE',
//                     textOff: 'DISABLE',
//                     textOffColor: Colors.white,
//                     textOnColor: Colors.white,
//                     colorOn: Color.fromARGB(255, 0, 0, 0),
//                     colorOff: const Color.fromARGB(255, 0, 0, 0),
//                     iconOn: Icons.lightbulb_outline,
//                     iconOff: Icons.power_settings_new,
//                     animationDuration: const Duration(milliseconds: 300),
//                     onTap: () {
//                       showAboutDialog(context: context);
//                     },
//                     onDoubleTap: () {},
//                     onSwipe: () {},
//                     onChanged: (bool state) {
//                       print("The button is working");

//                       // runIPSScript();
//                     },
                  // ),