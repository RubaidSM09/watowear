import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/profile/controllers/profile_controller.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/custom_text_fields.dart';
import '../../sign_up/views/extra9_view.dart';

class EditProfileView extends GetView<ProfileController> {
  const EditProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Edit Personal Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 24.4.h,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 19.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFDBDFC0),
                ),
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 45.61403656.r,
                          backgroundImage: AssetImage(
                            'assets/images/home/settings/profile_pic.jpg',
                          ),
                        ),
                        Positioned(
                          top: 63.86.h,
                          left: 63.86.w,
                          child: Container(
                            padding: EdgeInsets.all(6.84.w),
                            decoration: BoxDecoration(
                              color: WTWColor.primary,
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFE5E7EB)),
                            ),
                            child: Image.asset(
                              'assets/images/home/settings/camera.png',
                              scale: 4,
                            ),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 18.25.h,),

                    Text(
                      'Emma Johnson',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 20.53.sp,
                      ),
                    ),

                    SizedBox(height: 2.h,),

                    CustomTextField(
                      labelText: 'Name',
                      hintText: 'Emma Johnson',
                      fillColor: Colors.white,
                      // controller: controller.emailController,
                    ),

                    SizedBox(height: 15.08.h,),

                    CustomTextField(
                      labelText: 'E-mail',
                      hintText: 'danmith1234@gmail.com',
                      fillColor: Colors.white,
                      // controller: controller.emailController,
                    ),

                    SizedBox(height: 15.08.h,),

                    CustomTextField(
                      labelText: 'Phone',
                      hintText: '+1 123745689',
                      fillColor: Colors.white,
                      // controller: controller.emailController,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h,),
              
              WTWPrimaryButton(text: 'Save Changes', onTap: () {  }),

              SizedBox(height: 46.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change Your Password',
                    style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox.shrink()
                ],
              ),

              SizedBox(height: 16.h,),

              CustomTextField(
                labelText: 'Current Password',
                hintText: 'Enter Current Password',
                fillColor: Colors.white,
                width: 385,
                // controller: controller.emailController,
              ),

              SizedBox(height: 15.08.h,),

              CustomTextField(
                labelText: 'New Password',
                hintText: 'Enter New Password',
                fillColor: Colors.white,
                width: 385,
                // controller: controller.emailController,
              ),

              SizedBox(height: 15.08.h,),

              CustomTextField(
                labelText: 'Confirm Password',
                hintText: 'Re-enter New Password',
                fillColor: Colors.white,
                width: 385,
                // controller: controller.emailController,
              ),

              SizedBox(height: 15.08.h,),

              WTWPrimaryButton(text: 'Update Password', onTap: () {  }),

              SizedBox(height: 30.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Update Your Measurements',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox.shrink()
                ],
              ),

              SizedBox(height: 16.h,),

              HeightWeightTextField(
                labelText: 'Height',
                hintText: 'Type your height',
                unit: controller.heightUnit,
                units: controller.heightUnits,
                onUnitChanged: controller.setHeightUnit,
              ),

              SizedBox(height: 12.h),

              HeightWeightTextField(
                labelText: 'Weight',
                hintText: 'Type your weight',
                unit: controller.weightUnit,
                units: controller.weightUnits,
                onUnitChanged: controller.setWeightUnit,
              ),

              SizedBox(height: 15.08.h,),

              WTWPrimaryButton(text: 'Update Measurements', onTap: () {  }),

              SizedBox(height: 111.h,),
            ],
          ),
        ),
      ),
    );
  }
}
