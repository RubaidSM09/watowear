import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: controller.fade,
          child: Image.asset(
            'assets/images/onboarding/wtw_logo.png',
            height: 249.1407470703125.h,
            width: 251.w,
          ),
        ),
      ),
    );
  }
}
