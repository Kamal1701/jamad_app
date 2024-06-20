import 'package:get/get.dart';

class JamadHomeScreenDrawerController extends GetxController {
  void onMenuItemTap(String route) {
    Get.back();
    Get.toNamed(route);
  }
}
