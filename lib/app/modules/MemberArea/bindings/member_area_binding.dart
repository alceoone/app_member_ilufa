import 'package:get/get.dart';

import '../controllers/member_area_controller.dart';

class MemberAreaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberAreaController>(
      () => MemberAreaController(),
    );
  }
}
