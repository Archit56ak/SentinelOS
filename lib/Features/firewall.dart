// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:sentinel/Features/firewall_scripts.dart';

class Firewall extends StatefulWidget {
  const Firewall({super.key});

  @override
  State<Firewall> createState() => _FirewallState();
}

class _FirewallState extends State<Firewall> {
  RxList<String> blocked_sites = <String>[].obs;
  TextEditingController siteController = TextEditingController();
  var itemCount = 0.obs;

  addSite(String site) {
    blocked_sites.add(site);
    itemCount.value = blocked_sites.length;
    siteController.clear();
  }

  removeSite(int index) {
    blocked_sites.removeAt(index);
    itemCount.value = blocked_sites.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.amber,
        ),
        title: Text(
          "Firewall",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(),
                      child: ListTile(
                        title: Text(
                          "Install ufw :- ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              ufwscript();
                            },
                            icon: Icon(Icons.admin_panel_settings_outlined),
                            label: Text("Install")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(),
                      child: ListTile(
                        title: Text(
                          "Install auditd",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              auditdscript();
                            },
                            icon: Icon(Icons.admin_panel_settings_outlined),
                            label: Text("Install")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(),
                      child: ListTile(
                        title: Text(
                          "IP Forwarding :- ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: LiteRollingSwitch(
                          value: false,
                          width: 110,
                          textSize: 12,
                          textOn: 'ENABLE',
                          textOff: 'DISABLE',
                          textOffColor: Colors.white,
                          textOnColor: Colors.black,
                          colorOn: Colors.amber,
                          colorOff: Color.fromARGB(255, 0, 0, 0),
                          iconOn: Icons.lightbulb_outline,
                          iconOff: Icons.power_settings_new,
                          animationDuration: const Duration(milliseconds: 300),
                          onTap: () {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onChanged: (bool state) {
                            if (state) {
                              IPenablescript();
                            } else {
                              IPdisablescript();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(),
                      child: ListTile(
                        title: Text(
                          "TCP Cookies :- ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: LiteRollingSwitch(
                          value: false,
                          width: 110,
                          textSize: 12,
                          textOn: 'ENABLE',
                          textOff: 'DISABLE',
                          textOffColor: Colors.white,
                          textOnColor: Colors.black,
                          colorOn: Colors.amber,
                          colorOff: Color.fromARGB(255, 0, 0, 0),
                          iconOn: Icons.lightbulb_outline,
                          iconOff: Icons.power_settings_new,
                          animationDuration: const Duration(milliseconds: 300),
                          onTap: () {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onChanged: (bool state) {
                            if (state == true) {
                              TCPenablescript();
                            } else {
                              TCPdisablescript();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(),
                      child: ListTile(
                        title: Text(
                          "SSH Root :- ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: LiteRollingSwitch(
                          value: false,
                          width: 110,
                          textSize: 12,
                          textOn: 'ENABLE',
                          textOff: 'DISABLE',
                          textOffColor: Colors.white,
                          textOnColor: Colors.black,
                          colorOn: Colors.amber,
                          colorOff: Color.fromARGB(255, 0, 0, 0),
                          iconOn: Icons.lightbulb_outline,
                          iconOff: Icons.power_settings_new,
                          animationDuration: const Duration(milliseconds: 300),
                          onTap: () {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onChanged: (bool state) {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                    padding: EdgeInsets.all(4),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ListTile(
                      title: TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (val) =>
                            val!.isEmpty ? 'Please enter your Email-ID' : null,
                        controller: siteController,
                        decoration: InputDecoration(
                            labelText: "Website",
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.text_snippet_outlined),
                            prefixIconColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(15)),
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            filled: false,
                            // hintText: hintText,
                            iconColor: Color.fromARGB(255, 255, 255, 255),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 254, 254, 254))),
                      ),
                      trailing: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              // minimumSize: Size(),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            addSite(siteController.text);
                          },
                          icon: Icon(Icons.text_snippet_outlined),
                          label: Text("Block")),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(34, 8, 0, 0),
                      padding: EdgeInsets.all(7),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Obx(() => ListView.builder(
                          itemCount: blocked_sites.length,
                          itemBuilder: ((context, index) {
                            return ListTile(
                              title: Text(
                                blocked_sites[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: GestureDetector(
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onTap: () {
                                  removeSite(index);
                                },
                              ),
                            );
                          }))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
