import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';

class Onboarding4View extends GetView {
  const Onboarding4View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 232.6.h,
            left: 57.w,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: WTWColor.primary, width: 8.sp),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9999.r),
                    child: Image.asset(
                      'assets/images/onboarding/chloe.png',
                      fit: BoxFit.cover,
                      width: 192.w,
                      height: 192.h,
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                Text(
                  'Meet Chloé',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 36.sp
                  ),
                  // style: titleStyle,
                ),
                SizedBox(height: 26.h),
                Text(
                  'Your personal style coach',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WTWColor.accent,
                    fontFamily: 'Comfortaa',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 341.w,
                  child: Text(
                    'Meet Chloé, your personal stylist and style BFF. She learns what you love and helps you wear it in new ways.',
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
