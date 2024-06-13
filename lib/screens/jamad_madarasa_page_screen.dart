import 'package:flutter/material.dart';

class JamadMadarasaPageScreen extends StatefulWidget {
  const JamadMadarasaPageScreen({super.key});

  @override
  State<JamadMadarasaPageScreen> createState() =>
      _JamadMadarasaPageScreenState();
}

class _JamadMadarasaPageScreenState extends State<JamadMadarasaPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("மதராசா"),
        ),
        body: Container(
          child: const Center(child: Text("மதராசா")),
        ),
      ),
    );
  }
}
