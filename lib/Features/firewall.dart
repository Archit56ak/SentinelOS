import 'package:flutter/material.dart';

class Firewall extends StatefulWidget {
  const Firewall({super.key});

  @override
  State<Firewall> createState() => _FirewallState();
}

class _FirewallState extends State<Firewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firewall"),),
     
    );
  }
}