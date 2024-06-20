import 'package:flutter/material.dart';

class JamadLocationPageScreen extends StatefulWidget {
  const JamadLocationPageScreen({super.key});

  @override
  State<JamadLocationPageScreen> createState() =>
      _JamadLocationPageScreenState();
}

class _JamadLocationPageScreenState extends State<JamadLocationPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
        ),
        body: Container(
          child: const Center(child: Text("Contact Us")),
        ),
      ),
    );
  }
}
