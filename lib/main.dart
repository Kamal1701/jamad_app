import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jamad_app/pages_route/app_routes.dart';
import 'package:jamad_app/screens/jamad_about_us_page_screen.dart';
import 'package:jamad_app/screens/jamad_contact_page_screen.dart';
import 'package:jamad_app/screens/jamad_location_page_screen.dart';
import 'package:jamad_app/screens/jamad_home_screen.dart';
import 'package:jamad_app/screens/jamad_madarasa_page_screen.dart';
import 'package:jamad_app/screens/jamad_pengal_bayan_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOME,
      getPages: [
        GetPage(name: AppRoutes.HOME, page: () => JamadHomeScreen()),
        GetPage(
            name: AppRoutes.PENGAL_BAYAN,
            page: () => const JamadPengalBayanScreen()),
        GetPage(
            name: AppRoutes.MADRASA,
            page: () => const JamadMadarasaPageScreen()),
        GetPage(
            name: AppRoutes.LOCATION,
            page: () => const JamadLocationPageScreen()),
        GetPage(
            name: AppRoutes.ABOUTUS,
            page: () => const JamadAboutUsPageScreen()),
      ],
      // home: JamadHomeScreen(),
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
