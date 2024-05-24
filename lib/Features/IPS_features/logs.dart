// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Logs extends StatelessWidget {
  const Logs({super.key, required this.log});
  final List<List<dynamic>> log;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          padding: EdgeInsets.all(5),
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 0, 0, 0),
          child: ListView.builder(
              itemCount: log.length,
              itemBuilder: (context, items) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          log.isNotEmpty ? log[items][0] : "List is empty",
                          style: items == 0
                              ? TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Inconsolata',
                                  fontWeight: FontWeight.normal)
                              : TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                            log.isNotEmpty ? log[items][1] : "List is empty",
                            style: items == 0
                                ? TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Inconsolata',
                                    fontWeight: FontWeight.normal)
                                : TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          log.isNotEmpty ? log[items][2] : "List is empty",
                          style: items == 0
                              ? TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Inconsolata',
                                  fontWeight: FontWeight.normal)
                              : TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          log.isNotEmpty ? log[items][3] : "List is empty",
                          style: items == 0
                              ? TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Inconsolata',
                                  fontWeight: FontWeight.normal)
                              : TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          log.isNotEmpty ? log[items][4] : "List is empty",
                          style: items == 0
                              ? TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Inconsolata',
                                  fontWeight: FontWeight.normal)
                              : TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        color: items == 0 ? Colors.amber : Colors.black,
                      ),
                      child: Center(
                        child: Text(
                            log.isNotEmpty ? log[items][5] : "List is empty",
                            style: items == 0
                                ? TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Inconsolata',
                                    fontWeight: FontWeight.normal)
                                : TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
