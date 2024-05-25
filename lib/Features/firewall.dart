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
    );
  }
}
