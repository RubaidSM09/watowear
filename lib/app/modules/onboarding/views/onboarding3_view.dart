import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';

class Onboarding3View extends GetView {
  const Onboarding3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 145.6.h,
            left: 40.w,
            child: Column(
              children: [
                Image.asset('assets/images/onboarding/onboarding3.png', height: 384.h, width: 320.w,),
                SizedBox(height: 50.h),
                Text(
                  'Get Personalized\nOutfit Suggestions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 32.sp
                  ),
                  // style: titleStyle,
                ),
                SizedBox(height: 26.h),
                Text(
                  'AI-powered styling just for you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WTWColor.accent,
                    fontFamily: 'Comfortaa',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: 341.w,
                  child: Text(
                    'Based on your mood, occasion, and personal style preferences.',
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
