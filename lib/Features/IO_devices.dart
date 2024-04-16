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
      appBar: AppBar(title: Text("IO Devices"),),
     
    );
  }
}