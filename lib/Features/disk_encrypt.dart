import 'package:flutter/material.dart';

class Disk_encrypt extends StatefulWidget {
  const Disk_encrypt({super.key});

  @override
  State<Disk_encrypt> createState() => _Disk_encryptState();
}

class _Disk_encryptState extends State<Disk_encrypt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.amber,
        ),
        title: Text(
          "Disk Encryption",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
