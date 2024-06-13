import 'package:flutter/material.dart';

class JamadContantPageScreen extends StatelessWidget {
  const JamadContantPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("நிர்வாகிகள்"),
        ),
        body: Container(
          child: const Center(child: Text("நிர்வாகிகள்")),
        ),
      ),
    );
  }
}
