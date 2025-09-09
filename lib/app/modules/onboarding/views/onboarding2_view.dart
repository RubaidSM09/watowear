import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class Onboarding2View extends GetView {
  const Onboarding2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 202.6.h,),
        Image.asset('assets/images/onboarding/onboarding2.png', height: 256.h, width: 192.w,),
        SizedBox(height: 38.h),
        Text(
          'Upload your real\nwardrobe',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 30.sp
          ),
          // style: titleStyle,
        ),
        SizedBox(height: 26.h),
        Text(
          'Digitize your real clothes in seconds.',
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
            'Organize. See what you own. Get personalized outfit suggestions based on your actual wardrobe.',
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
    );
  }
}
