import 'package:flutter/material.dart';

class JamadContactUsPageScreen extends StatefulWidget {
  const JamadContactUsPageScreen({super.key});

  @override
  State<JamadContactUsPageScreen> createState() =>
      _JamadContactUsPageScreenState();
}

class _JamadContactUsPageScreenState extends State<JamadContactUsPageScreen> {
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
