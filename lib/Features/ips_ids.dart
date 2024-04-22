// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:path/path.dart' as p;
import 'dart:ffi' as dart_ffi;

typedef RunIDSFunc = dart_ffi.Void Function();
typedef RunIDSScript = void Function();

class IPS_IDS extends StatefulWidget {
  static const id = 'IPS_IDS';
  const IPS_IDS({super.key});

  @override
  State<IPS_IDS> createState() => _IPS_IDSState();
}

void script() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mydll.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunIDSScript runIPSScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunIDSFunc>>("runScript")
      .asFunction();
  runIPSScript();
  print(libraryPath);
}

class _IPS_IDSState extends State<IPS_IDS> {
  List<String> IPS_features = ["Logs", "Rule", "Snorpy"];
  int curr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IPS/IDS"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            // padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Text("IPS/IDS : "),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: LiteRollingSwitch(
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
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                    onChanged: (bool state) {
                      print("The button is working");
                      // runIPSScript();
                      script();
                    },
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 0.2,
            color: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.756,
            // padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: IPS_features.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    curr = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  margin: EdgeInsets.all(10),
                                  width: 110,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: curr == index
                                          ? Colors.amber
                                          : Colors.white,
                                      borderRadius: curr == index
                                          ? BorderRadius.circular(15)
                                          : BorderRadius.circular(5),
                                      border: curr == index
                                          ? Border.all(
                                              color: Colors.black, width: 1)
                                          : null),
                                  child: Center(
                                    child: Text(
                                      IPS_features[index],
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: curr == index,
                                  child: Container(
                                    width: 70,
                                    height: 2,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.amber),
                                  ))
                            ],
                          )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  width: double.infinity,
                  height: 432,
                  color: Colors.amber,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
