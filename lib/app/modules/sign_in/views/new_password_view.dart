import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_in/views/sign_in_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_logos.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/custom_text_fields.dart';
import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(NewPasswordController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        title: Center(
          child: WTWAppbarText(
            text: 'Reset Password',
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 152.8.h,
            left: 42.w,
            child: Column(
              children: [
                CustomLogo(icon: 'assets/images/authentication/new_password.png'),

                SizedBox(height: 20.22.h,),

                ResetPasswordHeadText(text: 'Create New Password?',),

                SizedBox(height: 12.h,),

                ResetPasswordSubheadText(text: 'Choose a strong password to secure your account.',),

                SizedBox(height: 24.56.h,),

                Obx(() {
                  return CustomTextField(
                    labelText: 'New Password',
                    hintText: 'Enter your Password',
                    obscureText: controller.isNewPasswordVisible.value ? false : true,
                    controller: controller.newPasswordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.isNewPasswordVisible.value = !controller.isNewPasswordVisible.value;
                      },
                      child: Icon(
                        controller.isNewPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                        size: 25.sp,
                        color: WTWColor.secondary_bg,
                      ),
                    ),
                  );
                }),

                SizedBox(height: 15.72.h,),

                Obx(() {
                  return CustomTextField(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm New Password',
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

                SizedBox(height: 30.h,),

                ResetPasswordButton(
                  text: 'Reset Password',
                  onTap: () {
                    // Get.back();
                    // Get.back();
                    // Get.back();
                    // Get.back();
                    Get.to(SignInView());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
