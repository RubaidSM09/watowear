import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/dashboard/views/dashboard_view.dart';
import 'package:watowear_chole/app/modules/sign_in/views/forgot_password_view.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_footer.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';
import 'package:watowear_chole/common/widget/custom_text_fields.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        title: Center(
          child: WTWAppbarText(
            text: 'Log In',
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
                LogInHead(),

                SizedBox(height: 10.41.h,),

                LogInSubhead(),

                SizedBox(height: 33.31.h,),
                
                CustomTextField(
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                  controller: controller.emailController,
                ),

                SizedBox(height: 24.98.h,),

                Obx(() {
                  return CustomTextField(
                    labelText: 'Password',
                    hintText: 'Enter your password',
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

                SizedBox(height: 24.99.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        RememberMeText(),
                      ],
                    ),
                    SizedBox(width: 79.83.w,),
                    GestureDetector(
                      onTap: () => Get.to(ForgotPasswordView()),
                      child: ForgotPasswordText(),
                    ),
                  ],
                ),

                SizedBox(height: 24.99.h,),

                SignInButton(onTap: () => Get.off(DashboardView())),

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
            child: LogInFooter(),
          )
        ],
      )
    );
  }
}
