import 'package:get/get.dart';

import 'package:watowear_chole/app/modules/closet/controllers/quick_scan_controller.dart';

import '../controllers/closet_controller.dart';

class ClosetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuickScanController>(
      () => QuickScanController(),
    );
    Get.lazyPut<ClosetController>(
      () => ClosetController(),
    );
  }
}
