import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../custom_colors.dart';
import 'custom_text.dart';

class LogInFooter extends StatelessWidget {
  const LogInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440.w,
      height: 82.35897064208984.h,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: WTWColor.secondary_bg, width: 1.13.w)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NoAccountText(),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: () => Get.toNamed('/sign-up'),
            child: CreateAccountText(),
          ),
        ],
      ),
    );
  }
}

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440.w,
      height: 82.35897064208984.h,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: WTWColor.secondary_bg, width: 1.13.w)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlreadyAccountText(),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: () => Get.toNamed('/sign-in'),
            child: LogInText(),
          ),
        ],
      ),
    );
  }
}
