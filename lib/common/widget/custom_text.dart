import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:watowear_chole/app/modules/sign_in/views/sign_in_view.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/verify_mail_controller.dart';

import '../custom_colors.dart';

class WTWAppbarText extends StatelessWidget {
  final String text;

  const WTWAppbarText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w600,
        fontSize: 24.sp,
      ),
    );
  }
}

class LogInHead extends StatelessWidget {

  const LogInHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome back',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 20.82.sp,
      ),
    );
  }
}

class LogInSubhead extends StatelessWidget {

  const LogInSubhead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign in to continue to your closet',
      style: TextStyle(
        color: WTWColor.text_icons.withAlpha(166),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 16.65.sp,
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;

  const LabelText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 14.57.sp,
          ),
        ),
        SizedBox.shrink()
      ],
    );
  }
}

class RememberMeText extends StatelessWidget {

  const RememberMeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Remember me',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 14.57.sp,
          ),
        ),
        SizedBox.shrink()
      ],
    );
  }
}

class ForgotPasswordText extends StatelessWidget {

  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Forgot password?',
          style: TextStyle(
            color: WTWColor.primary,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 14.57.sp,
          ),
        ),
        SizedBox.shrink()
      ],
    );
  }
}

class ContinueWithText extends StatelessWidget {

  const ContinueWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'or continue with',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 14.57.sp,
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {

  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Don\'t have an account?',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 15.79.sp,
      ),
    );
  }
}

class CreateAccountText extends StatelessWidget {

  const CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create Account',
      style: TextStyle(
        color: WTWColor.primary,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 15.79.sp,
      ),
    );
  }
}

class PrivacyPolicyText extends StatelessWidget {

  const PrivacyPolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'I agree to the Terms & Conditions and Privacy Policy',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }
}

class AlreadyAccountText extends StatelessWidget {

  const AlreadyAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Already have an account?',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
      ),
    );
  }
}

class LogInText extends StatelessWidget {

  const LogInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Log In',
      style: TextStyle(
        color: WTWColor.primary,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 15.79.sp,
      ),
    );
  }
}

class ResetPasswordHeadText extends StatelessWidget {
  final String text;

  const ResetPasswordHeadText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w600,
        fontSize: 24.sp,
      ),
    );
  }
}

class ResetPasswordSubheadText extends StatelessWidget {
  final String text;

  const ResetPasswordSubheadText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.09375.w,
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class RememberPasswordText extends StatelessWidget {

  const RememberPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.09375.w,
      child: Text(
        'Remember your password?',
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class VerifyMailText extends StatelessWidget {

  const VerifyMailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.09375.w,
      child: Text(
        'Didn\'t receive the code?',
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class BackToSignInText extends StatelessWidget {

  const BackToSignInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.09375.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Back to ',
            style: TextStyle(
              color: WTWColor.secondary_bg,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () => Get.to(SignInView()),
            child: Text(
              'Sign In',
              style: TextStyle(
                color: WTWColor.primary,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class ResendCodeText extends StatelessWidget {

  const ResendCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final VerifyMailController countdownController = Get.put(VerifyMailController());

    return SizedBox(
      width: 358.09375.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Resend code in ',
            style: TextStyle(
              color: WTWColor.secondary_bg,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.center,
          ),
          Obx(() {
            return Text(
              '${countdownController.countdown.value}s',
              style: TextStyle(
                color: WTWColor.primary,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
              textAlign: TextAlign.center,
            );
          }),
        ],
      ),
    );
  }
}
