import 'package:flutter/material.dart';

class JamadPengalBayanScreen extends StatefulWidget {
  const JamadPengalBayanScreen({super.key});

  @override
  State<JamadPengalBayanScreen> createState() => _JamadPengalBayanScreenState();
}

class _JamadPengalBayanScreenState extends State<JamadPengalBayanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("பெண்கள் பயான்"),
        ),
        body: Container(
          child: const Center(child: Text("பெண்கள் பயான்")),
        ),
      ),
    );
  }
}
