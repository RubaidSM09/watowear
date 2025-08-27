import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extra7_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extra8_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../controllers/extras_controller.dart';
import 'extra1_view.dart';
import 'extra2_view.dart';
import 'extra3_view.dart';
import 'extra4_view.dart';
import 'extra5_view.dart';
import 'extra6_view.dart';

class ExtrasView extends GetView<ExtrasController> {
  const ExtrasView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              Extra1View(), // 1
              Extra2View(), // 2
              Extra3View(), // 3
              Extra4View(), // 4
              Extra5View(), // 5
              Extra6View(), // 6
              Extra7View(),
              Extra8View(onTap1: controller.next, onTap2: controller.back,),
            ],
          ),

          Positioned(
              left: 30.13.w,
              top: 74.1.h,
              child: Icon(
                Icons.arrow_back,
                size: 20.sp,
                color: WTWColor.text_icons,
              ),
            ),

          Positioned(
              left: 374.15.w,
              top: 76.6.h,
              child: TextButton(
                onPressed: controller.skip,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
            ),

          // Bottom: indicator + primary action
          Obx(() {
            final idx = controller.current.value;
            if (idx<7){
              return Positioned(
                top: 800.h,
                child: Container(
                  width: 440.w,
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                      color: WTWColor.background,
                      boxShadow: [
                        BoxShadow(
                            color: WTWColor.text_icons.withAlpha(15),
                            blurRadius: 20.r
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      OnboardingButton(
                        text: 'Continue',
                        onTap: controller.next, // Next page
                      ),
                      SizedBox(height: 16.h),
                      OnboardingButton2(
                        text: 'Back',
                        onTap: controller.back, // Previous page
                      ),
                    ],
                  ),
                ),
              );
            }
            else {
              return SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}
