import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyMailController extends GetxController {
  // List of controllers for each OTP input field
  RxList<String> otpList = List.generate(6, (_) => '').obs;

  // Method to update OTP value for each field
  void updateOTP(int index, String value) {
    otpList[index] = value;
    // Move to the next field automatically when one is filled
    if (value.isNotEmpty && index < otpList.length - 1) {
      FocusScope.of(Get.context!).nextFocus();
    }
  }

  // Method to check if all OTP fields are filled
  bool get isOTPComplete => otpList.every((e) => e.isNotEmpty);

  // Observable countdown variable
  RxInt countdown = 30.obs;

  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    // Start the countdown timer when the controller is initialized
    _startCountdown();
  }

  // Start the countdown timer
  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        _timer.cancel();  // Stop the timer when it reaches 0
      }
    });
  }


  @override
  void onClose() {
    _timer.cancel();  // Cancel the timer when the controller is disposed
    super.onClose();
  }
}
