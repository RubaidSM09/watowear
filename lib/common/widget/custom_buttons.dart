import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_logos.dart';

class OnboardingButton extends GetView {
  final String text;
  final VoidCallback onTap;

  const OnboardingButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: WTWColor.primary,
        ),
        child: SizedBox(
          width: 139.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingButton2 extends GetView {
  final String text;
  final VoidCallback onTap;

  const OnboardingButton2({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: WTWColor.primary),
        ),
        child: SizedBox(
          width: 139.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: WTWColor.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignInButton extends GetView {
  final VoidCallback onTap;

  const SignInButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: WTWColor.primary,
        ),
        child: SizedBox(
          width: 139.w,
          child: Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleButton extends GetView {
  final VoidCallback onTap;

  const GoogleButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: WTWColor.primary),
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                'assets/images/authentication/google_logo.png',
                width: 19.842838287353516.w,
                height: 20.818714141845703.h,
                scale: 4,
              ),
              SizedBox(width: 12.49.w,),
              Text(
                'Continue with Google',
                style: TextStyle(
                  color: WTWColor.primary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comfortaa',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppleButton extends GetView {
  final VoidCallback onTap;

  const AppleButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: WTWColor.primary),
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                'assets/images/authentication/apple_logo.png',
                width: 19.842838287353516.w,
                height: 20.818714141845703.h,
                scale: 4,
              ),
              SizedBox(width: 12.49.w,),
              Text(
                'Continue with Apple',
                style: TextStyle(
                  color: WTWColor.primary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comfortaa',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAccountButton extends GetView {
  final VoidCallback onTap;

  const CreateAccountButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: WTWColor.primary,
        ),
        child: SizedBox(
          width: 139.w,
          child: Center(
            child: Text(
              'Create Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordButton extends GetView {
  final String text;
  final VoidCallback onTap;

  const ResetPasswordButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: WTWColor.primary,
        ),
        child: SizedBox(
          width: 139.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuickActionButton extends StatelessWidget {
  final String text;
  final String logo;
  final Color logoColor;
  final VoidCallback onTap;

  const QuickActionButton({
    required this.text,
    required this.logo,
    this.logoColor = WTWColor.primary,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 186.w,
        height: 118.h,
        padding: EdgeInsets.symmetric(horizontal: 32.18.w, vertical: 19.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: WTWColor.secondary_bg,
          )
        ),
        child: Column(
          children: [
            CustomLogo(
              icon: logo,
              width: 48,
              height: 48,
              imgWidth: 20,
              imgHeight: 17.5,
              logoColor: logoColor,
            ),
            SizedBox(height: 7.h,),
            Text(
              text,
              style: TextStyle(
                color: WTWColor.text_icons,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class WTWPrimaryButton extends GetView {
  final String text;
  final String icon;
  final double width;
  final double height;
  final VoidCallback onTap;

  const WTWPrimaryButton({
    required this.text,
    this.icon = '',
    this.width = 385,
    this.height = 48,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: WTWColor.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != '' ? Image.asset(
              icon,
              width: 16.w,
              height: 16.h,
              scale: 4,
            ) : SizedBox.shrink(),
            icon != '' ? text != '' ? SizedBox(width: 10.w,) : SizedBox.shrink() : SizedBox.shrink(),
            text != '' ? Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comfortaa',
              ),
            ) : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class WTWSecondaryButton extends GetView {
  final String text;
  final String icon;
  final double width;
  final double height;
  final VoidCallback onTap;

  const WTWSecondaryButton({
    required this.text,
    this.icon = '',
    this.width = 385,
    this.height = 48,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: WTWColor.primary
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != '' ? Image.asset(
              icon,
              width: 16.w,
              height: 16.h,
              scale: 4,
            ) : SizedBox.shrink(),
            icon != '' ? text != '' ? SizedBox(width: 10.w,) : SizedBox.shrink() : SizedBox.shrink(),
            text != '' ? Text(
              text,
              style: TextStyle(
                color: WTWColor.text_icons,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Comfortaa',
              ),
            ) : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class LikeDislikeButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const LikeDislikeButton({
    required this.icon,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.51.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: Color(0xFFE5E7EB)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(26),
              blurRadius: 4.43.r,
              offset: Offset(0.w, 2.22.h),
            ),
            BoxShadow(
              color: Colors.black.withAlpha(26),
              blurRadius: 6.65.r,
              offset: Offset(0.w, 4.43.h),
            ),
          ],
        ),
        child: Image.asset(
          icon,
          width: 22.159090042114258.w,
          height: 19.39093780517578.h,
          scale: 4,
        ),
      ),
    );
  }
}

class RefineSuggestionsButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const RefineSuggestionsButton({
    required this.text,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.5.w, vertical: 7.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11078.44.r),
          color: Colors.white,
          border: Border.all(
              color: Color(0xFFE5E7EB)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 2.22.r,
              offset: Offset(0.w, 1.11.h),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF4A4A4A),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.51.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
