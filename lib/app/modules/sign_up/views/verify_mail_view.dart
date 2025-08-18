import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/verify_mail_controller.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extras_view.dart';
import 'package:watowear_chole/common/widget/custom_footer.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_logos.dart';
import '../../../../common/widget/custom_text.dart';
import '../../sign_in/views/new_password_view.dart';

class VerifyMailView extends GetView<VerifyMailController> {
  const VerifyMailView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyMailController());

    // FocusNodes for each OTP field
    List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: WTWColor.background,
        title: WTWAppbarText(
          text: 'Verify Email',
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 152.8.h,
            left: 0.w,
            right: 0.w,
            child: Column(
              children: [
                CustomLogo(icon: 'assets/images/authentication/verify_mail.png'),

                SizedBox(height: 20.22.h,),

                ResetPasswordHeadText(text: 'Check your email',),

                SizedBox(height: 12.h,),

                ResetPasswordSubheadText(text: 'We\'ve sent a 6-digit verification code to user@example.com',),

                SizedBox(height: 24.56.h,),

                // OTP Input Fields
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Obx(() {
                      return Padding(
                        padding: index == 0
                            ? EdgeInsets.only(right: 6.5.w)
                            : index == 5
                            ? EdgeInsets.only(left: 6.5.w)
                            : EdgeInsets.symmetric(horizontal: 6.5.w),
                        child: SizedBox(
                          width: 52.w,
                          height: 56.h,
                          child: TextField(
                            controller: TextEditingController(text: controller.otpList[index]),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.sp),
                            focusNode: focusNodes[index], // Assigning FocusNode
                            decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: WTWColor.text_icons, width: 2),
                              ),
                            ),
                            onChanged: (value) {
                              controller.updateOTP(index, value); // Update OTP value

                              if (value.isNotEmpty && index < 5) {
                                // Move to the next field if the current one is filled
                                FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                              } else if (value.isEmpty && index > 0) {
                                // Move to the previous field if the current one is empty
                                FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                              }
                            },
                          ),
                        ),
                      );
                    });
                  }),
                ),

                SizedBox(height: 30.47.h,),

                VerifyMailText(),

                SizedBox(height: 9.h,),

                ResendCodeText(),

                SizedBox(height: 30.h,),

                ResetPasswordButton(text: 'Verify Email', onTap: () => Get.to(ExtrasView()),),
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
