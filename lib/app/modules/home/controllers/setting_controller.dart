import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool isNotificationActive = true.obs;
  RxBool isDarkMode = false.obs;

  RxBool isVoiceAssistant1Active = false.obs;
  RxBool isVoiceAssistant2Active = false.obs;
  RxBool isVoiceAssistant3Active = false.obs;
  RxBool isVoiceAssistant4Active = false.obs;
  RxBool isVoiceAssistant5Active = false.obs;
  RxBool isVoiceAssistant6Active = false.obs;

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
    super.onClose();
  }

  void increment() => count.value++;
}
