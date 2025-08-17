import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';

class Onboarding6View extends GetView {
  const Onboarding6View({super.key});
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
                    'assets/images/onboarding/onboarding6.png',
                    width: 256.w,
                    height: 256.h,
                  ),
                ),
                SizedBox(height: 38.h),
                Text(
                  'Make It Yours',
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
                    'Unlock all the amazing outfit ideas in your wardrobe by signing up.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: WTWColor.text_icons,
                        fontSize: 18.sp,
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
