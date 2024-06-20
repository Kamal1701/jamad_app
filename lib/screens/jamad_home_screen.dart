import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jamad_app/controllers/jamad_home_screen_bottom_navigation_controller.dart';
import 'package:jamad_app/controllers/jamad_home_screen_drawer_controller.dart';
import 'package:jamad_app/pages_route/app_routes.dart';
import 'package:jamad_app/screens/jamad_about_us_page_screen.dart';
import 'package:jamad_app/screens/jamad_calendar_page_screen.dart';
import 'package:jamad_app/screens/jamad_contact_page_screen.dart';
import 'package:jamad_app/screens/jamad_location_page_screen.dart';
import 'package:jamad_app/screens/jamad_home_page_screen.dart';
import 'package:jamad_app/screens/jamad_madarasa_page_screen.dart';
import 'package:jamad_app/screens/jamad_pengal_bayan_screen.dart';

// class JamadHomeScreen extends StatefulWidget {
//   const JamadHomeScreen({super.key});

//   @override
//   State<JamadHomeScreen> createState() => _JamadHomeScreenState();
// }

// class _JamadHomeScreenState extends State<JamadHomeScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const JamadHomePageScreen(),
//     const JamadContantPageScreen(),
//     const JamadCalendarPageScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Tamilnadu Thawood Jamad"),
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               Container(
//                 height: 60.0,
//                 decoration: const BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       'TNTJ TIRUVALLUR',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 // leading: Icon(Icons.home),
//                 title: const Text('பெண்கள் பயான்'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const JamadPengalBayanScreen()),
//                   );
//                 },
//               ),
//               ListTile(
//                 // leading: Icon(Icons.settings),
//                 title: const Text('மதராசா'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const JamadMadarasaPageScreen()),
//                   );
//                 },
//               ),
//               ListTile(
//                 // leading: Icon(Icons.location_on),
//                 title: const Text('Location'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const JamadContactUsPageScreen()),
//                   );
//                 },
//               ),
//               ListTile(
//                 // leading: Icon(Icons.location_on),
//                 title: const Text('About Us'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const JamadAboutUsPageScreen()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.house_rounded),
//               label: 'முகப்பு',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.groups_2_rounded),
//               label: 'நிர்வாகிகள்',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.access_time_filled),
//               label: 'ஜும்ஆ',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.amber[800],
//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }

class JamadHomeScreen extends StatelessWidget {
  final JamadHomeScreenBottomNavController bottomNavController =
      Get.put(JamadHomeScreenBottomNavController());

  final List<Widget> _pages = [
    const JamadHomePageScreen(),
    const JamadContactPageScreen(),
    const JamadCalendarPageScreen(),
  ];
  JamadHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tamilnadu Thawood Jamad"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 60.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'TNTJ TIRUVALLUR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              jamadDrawerMenu(),
            ],
          ),
        ),
        body: Obx(() {
          return IndexedStack(
            index: bottomNavController.currentIndex.value,
            children: _pages,
          );
        }),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.house_rounded),
                label: 'முகப்பு',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups_2_rounded),
                label: 'நிர்வாகிகள்',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time_filled),
                label: 'ஜும்ஆ',
              ),
            ],
            currentIndex: bottomNavController.currentIndex.value,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {
              bottomNavController.updateIndex(index);
            },
          );
        }),
      ),
    );
  }
}

Widget jamadDrawerMenu() {
  final JamadHomeScreenDrawerController drawerController =
      Get.put(JamadHomeScreenDrawerController());

  return Container(
    child: Column(
      children: <Widget>[
        ListTile(
          // leading: Icon(Icons.home),
          title: const Text('பெண்கள் பயான்'),
          onTap: () {
            // Get.back();
            // Get.to(() => const JamadPengalBayanScreen());
            drawerController.onMenuItemTap(AppRoutes.PENGAL_BAYAN);
          },
        ),
        ListTile(
          // leading: Icon(Icons.settings),
          title: const Text('மதராசா'),
          onTap: () {
            // Get.back();
            // Get.to(() => const JamadMadarasaPageScreen());
            drawerController.onMenuItemTap(AppRoutes.MADRASA);
          },
        ),
        ListTile(
          // leading: Icon(Icons.location_on),
          title: const Text('Location'),
          onTap: () {
            // Get.back();
            // Get.to(() => const JamadContactUsPageScreen());
            drawerController.onMenuItemTap(AppRoutes.LOCATION);
          },
        ),
        ListTile(
          // leading: Icon(Icons.location_on),
          title: const Text('About Us'),
          onTap: () {
            // Get.back();
            // Get.to(() => const JamadAboutUsPageScreen());
            drawerController.onMenuItemTap(AppRoutes.ABOUTUS);
          },
        ),
      ],
    ),
  );
}
