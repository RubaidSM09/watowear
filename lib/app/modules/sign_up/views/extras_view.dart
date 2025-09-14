import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extra7_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extra8_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extra9_view.dart';
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

      appBar: AppBar(
        backgroundColor: WTWColor.background,
        leading: GestureDetector(
          onTap: () => controller.back(),
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
            color: WTWColor.text_icons,
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            TextButton(
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
          ],
        ),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: [
                Extra1View(), // 1
                Extra9View(),
                Extra2View(), // 2
                Extra3View(), // 3
                Extra4View(), // 4
                Extra5View(), // 5
                Extra6View(), // 6
                Extra7View(),
                Extra8View(onTap1: controller.next, onTap2: controller.back,),
              ],
            ),
        
            /*Positioned(
                left: 30.13.w,
                top: 74.1.h,
                child: GestureDetector(
                  onTap: () => controller.back(),
                  child: Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: WTWColor.background,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: WTWColor.secondary_bg,
                          blurRadius: 10.r
                        )
                      ]
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 20.sp,
                      color: WTWColor.text_icons,
                    ),
                  ),
                ),
              ),
        
            Positioned(
                right: 15.065.w,
                top: 70.1.h,
                child: TextButton(
                  onPressed: controller.skip,
                  child: Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                        color: WTWColor.background,
                        boxShadow: [
                          BoxShadow(
                              color: WTWColor.secondary_bg,
                              blurRadius: 10.r
                          )
                        ]
                    ),
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
              ),*/
        
            // Bottom: indicator + primary action
            /*Obx(() {
              final idx = controller.current.value;
              if (idx<7){
                return Positioned(
                  top: 775.h,
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
            }),*/
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Obx(() {
          final idx = controller.current.value;
          if (idx >= 8) return const SizedBox.shrink();
          return SafeArea(
            top: false,
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: WTWColor.background,
                boxShadow: [
                  BoxShadow(
                    color: WTWColor.text_icons.withAlpha(15),
                    blurRadius: 20.r,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OnboardingButton(text: 'Continue', onTap: controller.next),
                  SizedBox(height: 16.h),
                  OnboardingButton2(text: 'Back', onTap: controller.back),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
