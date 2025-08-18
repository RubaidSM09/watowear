import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/views/verify_mail_view.dart';

class ExtrasController extends GetxController {
  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final pageController = PageController();
  final current = 0.obs;
  RxList<RxDouble> topPosition = [831.0.obs, 758.76.obs, 919.0.obs, 718.0.obs, 593.68.obs, 717.65.obs, 950.57.obs, 553.12.obs].obs;

  void onPageChanged(int i) => current.value = i;

  void skip() => Get.offAllNamed('/add-wardrobe');

  void next() {
    if (current.value < 7) {
      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    } else {
      Get.offAllNamed('/add-wardrobe');
    }
  }

  void back() {
    if (current.value > 0) {
      pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    } else {
      Get.offAllNamed('/verify-mail');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
