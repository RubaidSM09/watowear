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
    return SizedBox(
      width: 313.w,
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
        ),
        textAlign: TextAlign.center,
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

class ExtrasSubheadText extends StatelessWidget {
  final String text;

  const ExtrasSubheadText({
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
          color: WTWColor.text_icons.withAlpha(166),
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

class BodyShapeText extends StatelessWidget {
  final String text;

  const BodyShapeText({
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
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class VibeText extends StatelessWidget {
  final String text;

  const VibeText({
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
        fontWeight: FontWeight.w400,
        fontSize: 16.65.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class NewThingsText extends StatelessWidget {
  final String text;

  const NewThingsText({
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
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class NewThingsSubtext extends StatelessWidget {
  final String text;

  const NewThingsSubtext({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF4B5563),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}



class FavColorsText extends StatelessWidget {
  final String text;

  const FavColorsText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF4B5563),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w700,
        fontSize: 18.74.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class CelebrityText extends StatelessWidget {
  final String text;

  const CelebrityText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134.28070068359375.w,
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 14.57.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class StyleInspirationText extends StatelessWidget {

  const StyleInspirationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Style Inspirations:',
      style: TextStyle(
        color: Color(0xFF4B5563),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w600,
        fontSize: 14.57.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class MoreUploadText extends StatelessWidget {

  const MoreUploadText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 263.w,
      child: Text(
        'The more you upload, the better the suggestions!',
        style: TextStyle(
          color: Color(0xFF4B5563),
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class HowToTakePhotosText extends StatelessWidget {

  const HowToTakePhotosText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'How to take great photos',
      style: TextStyle(
        color: WTWColor.text_icons,
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class QuickTipsText extends StatelessWidget {

  const QuickTipsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Quick tips for the best results',
      style: TextStyle(
        color: Color(0xFF4B5563),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class NewToWatowearText extends StatelessWidget {

  const NewToWatowearText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'New to Watowear?',
      style: TextStyle(
        color: Color(0xFF707868),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w700,
        fontSize: 17.73.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TakeAppTourText extends StatelessWidget {

  const TakeAppTourText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Take the app tour to get started!',
      style: TextStyle(
        color: Color(0xFF3D403A),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 15.51.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class GenerateOutfitTopText extends StatelessWidget {
  const GenerateOutfitTopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Creating Your Look',
      style: TextStyle(
        color: Color(0xFF3D403A),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class GenerateOutfitMidText extends StatelessWidget {
  const GenerateOutfitMidText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Chloé is generating your look…',
      style: TextStyle(
        color: Color(0xFF4B5563),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class GenerateOutfitBottomText extends StatelessWidget {

  const GenerateOutfitBottomText({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'This might take a moment',
      style: TextStyle(
        color: Color(0xFF9CA3AF),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class OutfitSuggestionsText extends StatelessWidget {
  final String text;
  final TextAlign alignment;

  const OutfitSuggestionsText({
    required this.text,
    this.alignment = TextAlign.center,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF858585),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w400,
        fontSize: 17.73.sp,
      ),
      textAlign: alignment,
    );
  }
}

class OutfitSuggestionsTextBold extends StatelessWidget {
  final String text;

  const OutfitSuggestionsTextBold({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF4A4A4A),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w600,
        fontSize: 19.94.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class MyClosetUpperSectionText extends StatelessWidget {
  final int count;
  final String type;

  const MyClosetUpperSectionText({
    required this.count,
    required this.type,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
              text: '$count\n',
              style: TextStyle(
                color: Color(0xFF414141),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 19.78.sp,
              ),
            ),
            TextSpan(
              text: type,
              style: TextStyle(
                color: Color(0xFF414141),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.19.sp,
              ),
            ),
          ]
      ),
    );
  }
}

class FilterText extends StatelessWidget {
  final String text;
  final bool isSelected;

  const FilterText({
    required this.text,
    required this.isSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: isSelected ? Colors.white : Color(0xFF414141),
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w500,
        fontSize: 15.39.sp,
      ),
    );
  }
}
