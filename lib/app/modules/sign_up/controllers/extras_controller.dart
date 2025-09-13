import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExtrasController extends GetxController {
  final RxBool isWoman = false.obs;
  final RxBool isMan = false.obs;
  final RxBool isNonBinary = false.obs;
  final RxBool isPNTS = false.obs;

  final heightUnit = 'Ft'.obs;
  final heightUnits = const ['Ft', 'In', 'Cm'];
  final weightUnit = 'Kg'.obs;
  final weightUnits = const ['Kg', 'lbs'];

  final RxList<RxBool> selectedBodyShape = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs].obs;
  final RxList<RxBool> selectedSkinTone = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs].obs;
  final RxList<RxBool> selectedVibe = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs].obs;
  final RxList<RxBool> selectedNewThing = [false.obs, false.obs, false.obs].obs;
  final RxList<RxBool> selectedStyle = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs].obs;

  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final pageController = PageController();
  final current = 0.obs;
  RxList<RxDouble> topPosition = [831.0.obs, 758.76.obs, 919.0.obs, 718.0.obs, 593.68.obs, 717.65.obs, 950.57.obs, 553.12.obs].obs;

  void setHeightUnit(String? v) {
    if (v != null) heightUnit.value = v;
  }

  void setWeightUnit(String? v) {
    if (v != null) weightUnit.value = v;
  }

  void onPageChanged(int i) => current.value = i;

  void skip() => Get.offAllNamed('/add-wardrobe');

  void next() {
    if (current.value < 8) {
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
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
