import 'package:flutter/material.dart';

class JamadAboutUsPageScreen extends StatefulWidget {
  const JamadAboutUsPageScreen({super.key});

  @override
  State<JamadAboutUsPageScreen> createState() => _JamadAboutUsPageScreenState();
}

class _JamadAboutUsPageScreenState extends State<JamadAboutUsPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
        ),
        body: Container(
          child: const Center(child: Text("About Us")),
        ),
      ),
    );
  }
}
