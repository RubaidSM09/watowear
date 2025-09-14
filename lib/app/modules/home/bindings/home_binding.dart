import 'package:get/get.dart';

import 'package:watowear_chole/app/modules/home/controllers/contact_support_controller.dart';
import 'package:watowear_chole/app/modules/home/controllers/setting_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactSupportController>(
      () => ContactSupportController(),
    );
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
