import 'package:get/get.dart';

import '../controllers/store_event_controller.dart';

class StoreEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreEventController>(
      () => StoreEventController(),
    );
  }
}
