import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jamad_app/screens/jamad_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: JamadHomeScreen(),
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
