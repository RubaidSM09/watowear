import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';

class Onboarding5View extends GetView {
  const Onboarding5View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 205.6.h,
            left: 45.w,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE5E7EB))
                  ),
                  child: Image.asset(
                    'assets/images/onboarding/onboarding5.png',
                    width: 256.w,
                    height: 256.h,
                  ),
                ),
                SizedBox(height: 38.h),
                Text(
                  'Let\'s Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 36.sp
                  ),
                  // style: titleStyle,
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: 341.w,
                  child: Text(
                    'Create your account and start building your smart wardrobe today. Your style journey begins now.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: WTWColor.text_icons,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Comfortaa'
                    ),
                    // style: bodyStyle,
                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
