import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class CustomLogo extends StatelessWidget {
  final String icon;

  const CustomLogo({
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(28.w),
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: WTWColor.primary,
        shape: BoxShape.circle
      ),
      child: Image.asset(
        icon,
        width: 21.w,
        height: 24.h,
        scale: 4,
      ),
    );
  }
}
