import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jamad_app/screens/jamad_branch_administer_page_screen.dart';

class JamadContantPageScreen extends StatelessWidget {
  const JamadContantPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("நிர்வாகிகள்"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => const JamadBranceAdministerPageScreen());
              },
              child: const Row(
                children: [
                  Text(
                    'கிளை நிர்வாகிகள் ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 255, 1),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color.fromRGBO(0, 0, 255, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          child: const Center(child: Text("நிர்வாகிகள்")),
        ),
      ),
    );
  }
}
