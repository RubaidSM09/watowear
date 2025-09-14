import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/extras_controller.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_text_fields.dart';

import '../../../../common/widget/custom_logos.dart';
import '../../../../common/widget/custom_text.dart';

class Extra1View extends GetView<ExtrasController> {
  const Extra1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Positioned(
          top: 15.h,
          left: 42.5.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: WTWColor.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: WTWColor.primary,
                      width: 5.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(26),
                        blurRadius: 15.r,
                        offset: Offset(0.w, 10.h)
                      ),
                      BoxShadow(
                          color: Colors.black.withAlpha(26),
                          blurRadius: 6.r,
                          offset: Offset(0.w, 4.h)
                      ),
                    ]
                  ),
                  child: CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage(
                      'assets/images/onboarding/chloe.png'
                    ),
                  ),
                ),

                SizedBox(height: 20.22.h,),

                ResetPasswordHeadText(text: 'Hi! Before I can help you look your best.....'),

                SizedBox(height: 12.h,),

                ExtrasSubheadText(text: 'Let’s get to know your style a\nlittle better.',),

                SizedBox(height: 24.08.h,),

                CustomTextField(
                  labelText: 'Age',
                  hintText: 'Enter your age',
                  controller: controller.ageController,
                ),

                SizedBox(height: 12.h,),

                GenderIdentityField(
                  isWoman: controller.isWoman,
                  isMan: controller.isMan,
                  isNonBinary: controller.isNonBinary,
                  isPNTS: controller.isPNTS,
                ),

                SizedBox(height: 12.h,),

                CustomTextField(
                  labelText: 'Location',
                  hintText: 'Enable location for climate context',
                  controller: controller.locationController,
                ),

                SizedBox(height: 10.h,),

                Text(
                  'We\'ll use this to suggest weather-appropriate outfits',
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                  ),
                ),

                SizedBox(height: 175.h,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GenderIdentityField extends StatelessWidget {
  final RxBool isWoman;
  final RxBool isMan;
  final RxBool isNonBinary;
  final RxBool isPNTS;

  const GenderIdentityField({
    required this.isWoman,
    required this.isMan,
    required this.isNonBinary,
    required this.isPNTS,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: 'Gender Identity'),

        SizedBox(height: 8.h),

        Row(
          children: [
            Obx(() {
              return GestureDetector(
                onTap: () {
                  isWoman.value = true;
                  isMan.value = false;
                  isNonBinary.value = false;
                  isPNTS.value = false;
                },
                child: Container(
                  width: 173.w,
                  height: 50.h,
                  padding: EdgeInsets.only(
                      left: 17.15.w, top: 12.24.h, bottom: 12.24.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.33.r),
                    color: isWoman.value ? WTWColor.text_icons : WTWColor.background,
                    border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
                  ),
                  child: Text(
                    'Woman',
                    style: TextStyle(
                        color: isWoman.value ? WTWColor.background : Color(0xFFADAEBC),
                        fontFamily: 'Comfortaa',
                        fontSize: 16.65.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              );
            }),
            SizedBox(width: 11.w,),
            Obx(() {
              return GestureDetector(
                onTap: () {
                  isWoman.value = false;
                  isMan.value = true;
                  isNonBinary.value = false;
                  isPNTS.value = false;
                },
                child: Container(
                  width: 173.w,
                  height: 50.h,
                  padding: EdgeInsets.only(
                      left: 17.15.w, top: 12.24.h, bottom: 12.24.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.33.r),
                    color: isMan.value ? WTWColor.text_icons : WTWColor.background,
                    border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
                  ),
                  child: Text(
                    'Man',
                    style: TextStyle(
                        color: isMan.value ? WTWColor.background : Color(0xFFADAEBC),
                        fontFamily: 'Comfortaa',
                        fontSize: 16.65.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              );
            }),
          ],
        ),

        SizedBox(height: 12.h,),

        Obx(() {
          return GestureDetector(
            onTap: () {
              isWoman.value = false;
              isMan.value = false;
              isNonBinary.value = true;
              isPNTS.value = false;
            },
            child: Container(
              width: 356.w,
              height: 50.h,
              padding: EdgeInsets.only(top: 12.24.h, bottom: 12.24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.33.r),
                color: isNonBinary.value ? WTWColor.text_icons : WTWColor.background,
                border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
              ),
              child: Center(
                child: Text(
                  'Non-binary',
                  style: TextStyle(
                      color: isNonBinary.value ? WTWColor.background : Color(0xFFADAEBC),
                      fontFamily: 'Comfortaa',
                      fontSize: 16.65.sp,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          );
        }),

        SizedBox(height: 12.h,),

        Obx(() {
          return GestureDetector(
            onTap: () {
              isWoman.value = false;
              isMan.value = false;
              isNonBinary.value = false;
              isPNTS.value = true;
            },
            child: Container(
              width: 356.w,
              height: 50.h,
              padding: EdgeInsets.only(top: 12.24.h, bottom: 12.24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.33.r),
                color: isPNTS.value ? WTWColor.text_icons : WTWColor.background,
                border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
              ),
              child: Center(
                child: Text(
                  'Prefer not to say',
                  style: TextStyle(
                      color: isPNTS.value ? WTWColor.background : Color(0xFFADAEBC),
                      fontFamily: 'Comfortaa',
                      fontSize: 16.65.sp,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

}
