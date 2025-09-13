import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/views/verify_mail_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_footer.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/custom_text_fields.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        title: Center(
          child: WTWAppbarText(
            text: 'Create Account',
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 60.76.h,
            left: 42.w,
            child: Column(
              children: [
                CustomTextField(
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                  controller: controller.fullNameController,
                ),

                SizedBox(height: 15.08.h,),

                CustomTextField(
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                  controller: controller.emailController,
                ),

                SizedBox(height: 15.08.h,),

                Obx(() {
                  return CustomTextField(
                    labelText: 'Password',
                    hintText: 'Create a password',
                    obscureText: controller.isPasswordVisible.value ? false : true,
                    controller: controller.passwordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.isPasswordVisible.value = !controller.isPasswordVisible.value;
                      },
                      child: Icon(
                        controller.isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                        size: 25.sp,
                        color: WTWColor.secondary_bg,
                      ),
                    ),
                  );
                }),

                SizedBox(height: 15.08.h,),

                Obx(() {
                  return CustomTextField(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm your password',
                    obscureText: controller.isConfirmPasswordVisible.value ? false : true,
                    controller: controller.confirmPasswordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.isConfirmPasswordVisible.value = !controller.isConfirmPasswordVisible.value;
                      },
                      child: Icon(
                        controller.isConfirmPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                        size: 25.sp,
                        color: WTWColor.secondary_bg,
                      ),
                    ),
                  );
                }),

                SizedBox(height: 10.05.h,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          controller.isChecked.value =
                          !controller.isChecked.value;
                        },
                        child: Container(
                          width: 20.818714141845703.w,
                          height: 20.818714141845703.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1.04.r),
                            border: Border.all(
                                color: Colors.black, width: 0.52.w),
                          ),
                          child: controller.isChecked.value
                              ? Icon(
                            Icons.check,
                            size: 16.sp,
                            color: Colors.black,
                          )
                              : null,
                        ),
                      );
                    }),
                    SizedBox(width: 12.49.w,),
                    SizedBox(
                      width: 320.w,
                      child: PrivacyPolicyText(),
                    ),
                  ],
                ),

                SizedBox(height: 35.95.h,),

                CreateAccountButton(onTap: () => Get.to(VerifyMailView(purpose: 'Sign Up',))),

                SizedBox(height: 33.31.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: WTWColor.secondary_bg,
                      width: 100.20632934570312.w,
                      height: 1.040935754776001,
                    ),
                    ContinueWithText(),
                    Container(
                      color: WTWColor.secondary_bg,
                      width: 100.20632934570312.w,
                      height: 1.040935754776001,
                    ),
                  ],
                ),

                SizedBox(height: 33.31.h,),

                GoogleButton(onTap: () {  }),

                SizedBox(height: 16.66.h,),

                AppleButton(onTap: () {  }),
              ],
            ),
          ),

          Positioned(
            top: 773.76.h,
            child: SignUpFooter(),
          )
        ],
      ),
    );
  }
}
