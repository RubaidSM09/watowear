import 'package:get/get.dart';

import '../controllers/add_wardrobe_controller.dart';

class AddWardrobeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddWardrobeController>(
      () => AddWardrobeController(),
    );
  }
}
