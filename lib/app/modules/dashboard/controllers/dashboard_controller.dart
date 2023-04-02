import 'package:get/get.dart';

class DashboardController extends GetxController {
  getArgs() {
    return tabIndex = 2;
  }

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
