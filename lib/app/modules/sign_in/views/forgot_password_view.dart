import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_in/controllers/forgot_password_controller.dart';
import 'package:watowear_chole/app/modules/sign_in/views/new_password_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_logos.dart';
import 'package:watowear_chole/common/widget/custom_text_fields.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ForgotPasswordController());

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
                CustomLogo(icon: 'assets/images/authentication/forgot_password.png'),

                SizedBox(height: 20.22.h,),

                ResetPasswordHeadText(text: 'Forgot Your Password?'),

                SizedBox(height: 12.h,),

                ResetPasswordSubheadText(text: 'Enter your email address and we’ll send you a link to reset your passwrod.',),

                SizedBox(height: 24.56.h,),
                
                CustomTextField(
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                  controller: controller.emailController,
                ),

                SizedBox(height: 30.47.h,),

                RememberPasswordText(),

                SizedBox(height: 9.h,),

                BackToSignInText(),

                SizedBox(height: 30.h,),

                ResetPasswordButton(text: 'Send Reset Link', onTap: () => Get.to(NewPasswordView())),
              ],
            ),
          )
        ],
      ),
    );
  }
}
