import 'package:flutter/material.dart';

class JamadBranceAdministerPageScreen extends StatelessWidget {
  const JamadBranceAdministerPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("கிளைகள்"),
        ),
        body: Container(
          child: const Center(child: Text("கிளைகள்")),
        ),
      ),
    );
  }
}
