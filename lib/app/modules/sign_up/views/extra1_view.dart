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
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 133.h,
          left: 42.5.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomLogo(icon: 'assets/images/authentication/look_at_your_best.png'),
            
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
            
                GenderIdentityField(),
            
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GenderIdentityField extends StatelessWidget {
  const GenderIdentityField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: 'Gender Identity'),

        SizedBox(height: 8.h),

        Row(
          children: [
            Container(
              width: 173.w,
              height: 50.h,
              padding: EdgeInsets.only(left: 17.15.w, top: 12.24.h, bottom: 12.24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.33.r),
                border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
              ),
              child: Text(
                'Woman',
                style: TextStyle(
                    color: Color(0xFFADAEBC),
                    fontFamily: 'Comfortaa',
                    fontSize: 16.65.sp,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(width: 11.w,),
            Container(
              width: 173.w,
              height: 50.h,
              padding: EdgeInsets.only(left: 17.15.w, top: 12.24.h, bottom: 12.24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.33.r),
                border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
              ),
              child: Text(
                'Man',
                style: TextStyle(
                    color: Color(0xFFADAEBC),
                    fontFamily: 'Comfortaa',
                    fontSize: 16.65.sp,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 12.h,),

        Container(
          width: 356.w,
          height: 50.h,
          padding: EdgeInsets.only(top: 12.24.h, bottom: 12.24.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.33.r),
            border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
          ),
          child: Center(
            child: Text(
              'Non-binary',
              style: TextStyle(
                  color: Color(0xFFADAEBC),
                  fontFamily: 'Comfortaa',
                  fontSize: 16.65.sp,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),

        SizedBox(height: 12.h,),

        Container(
          width: 356.w,
          height: 50.h,
          padding: EdgeInsets.only(top: 12.24.h, bottom: 12.24.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.33.r),
            border: Border.all(color: WTWColor.text_icons, width: 1.04.w),
          ),
          child: Center(
            child: Text(
              'Prefer not to say',
              style: TextStyle(
                  color: Color(0xFFADAEBC),
                  fontFamily: 'Comfortaa',
                  fontSize: 16.65.sp,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
      ],
    );
  }

}
