// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const id = "Profile";
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Text(
          "User Profile",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(0),
              ),
              child: Image.asset(
                "assets/VIT-logo.png",
                color: Colors.white.withOpacity(0.15),
                colorBlendMode: BlendMode.modulate,
                alignment: Alignment.topCenter,
              ),
            )
          ],
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(25),
                  height: MediaQuery.of(context).size.height * 0.39,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 33, 33, 33),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Archit",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 45,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "This is your profile page. You can see the progress \nyou've made with your work and manage your projects or assigned tasks",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  // color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //User Details
                    Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 255, 255, 255),
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20),
                        // border: Border.all(color: Colors.black)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Account",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 35),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(0, 255, 255, 255)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "User Information",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.amber),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Employee Name :- ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.amber),
                                        ),
                                        Text(
                                          "Archit Kothawade",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Username :- ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.amber),
                                        ),
                                        Text(
                                          "Archit56ak",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "EmailID :- ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.amber),
                                        ),
                                        Text(
                                          "abc****@gmail.com",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      "Contact Information",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.amber),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address:- ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.amber),
                                        ),
                                        Text(
                                          "LVL: 300, Twin Tower, Karvenagar, New York ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.all(10),
                            //   height: MediaQuery.of(context).size.height * 0.3,
                            //   width: MediaQuery.of(context).size.width * 0.6,
                            //   decoration: BoxDecoration(color: Colors.white),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    //Profile Picture
                    Container(
                      padding: EdgeInsets.all(28),
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/PP.jpeg"),
                            // radius: 120,
                            minRadius: 90,
                            maxRadius: 110,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Archit K, 20",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Pune, Maharashtra",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Software Developer - GDSC",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Vishwakarma Institute Of Technology",
                            style: TextStyle(
                                color: Colors.amber[300],
                                fontSize: 16,
                                // fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 80),
                          Text(
                            "Archit, a budding app developer, sharpened his skills at workshops organized by his GDSC, now applying his talent to craft innovative club projects.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
