import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/verify_mail_controller.dart';
import 'package:watowear_chole/app/modules/sign_up/views/extras_view.dart';
import 'package:watowear_chole/common/widget/custom_footer.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_logos.dart';
import '../../../../common/widget/custom_text.dart';

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
                    return Padding(
                      padding: index == 0
                          ? EdgeInsets.only(right: 6.5.w)
                          : index == 5
                          ? EdgeInsets.only(left: 6.5.w)
                          : EdgeInsets.symmetric(horizontal: 6.5.w),
                      child: SizedBox(
                        width: 52.w,
                        height: 56.h,
                        child: RawKeyboardListener(
                          focusNode: FocusNode(), // for backspace handling
                          onKey: (event) {
                            if (event is RawKeyDownEvent &&
                                event.logicalKey == LogicalKeyboardKey.backspace &&
                                controller.otpControllers[index].text.isEmpty &&
                                index > 0) {
                              // Move back when current is empty and backspace pressed
                              controller.focusNodes[index - 1].requestFocus();
                              controller.otpControllers[index - 1].selection = TextSelection.collapsed(
                                offset: controller.otpControllers[index - 1].text.length,
                              );
                            }
                          },
                          child: TextField(
                            controller: controller.otpControllers[index],
                            focusNode: controller.focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.sp),
                            autofocus: index == 0,
                            maxLength: 1, // UI counter off below
                            decoration: InputDecoration(
                              counterText: '',
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: WTWColor.text_icons, width: 2),
                              ),
                            ),
                            // Keep only digits and limit to 1 char
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6), // allow paste of up to 6
                            ],
                            onChanged: (value) {
                              // Handle paste of multiple digits
                              if (value.length > 1) {
                                final chars = value.replaceAll(RegExp(r'\D'), '').split('');
                                for (int i = 0; i < chars.length && (index + i) < 6; i++) {
                                  controller.otpControllers[index + i].text = chars[i];
                                  controller.updateOTP(index + i, chars[i]);
                                }
                                final nextIndex = (index + chars.length).clamp(0, 5);
                                if (nextIndex < 5) {
                                  controller.focusNodes[nextIndex + 1].requestFocus();
                                } else {
                                  controller.focusNodes[nextIndex].unfocus(); // done
                                }
                                return;
                              }

                              // Normal single digit flow
                              controller.updateOTP(index, value);

                              if (value.isNotEmpty && index < 5) {
                                controller.focusNodes[index + 1].requestFocus();
                              } else if (value.isEmpty && index > 0) {
                                controller.focusNodes[index - 1].requestFocus();
                              }
                            },
                          ),
                        ),
                      ),
                    );
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
