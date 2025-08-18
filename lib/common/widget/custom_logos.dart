import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class CustomLogo extends StatelessWidget {
  final String icon;
  final double width;
  final double height;
  final double imgWidth;
  final double imgHeight;
  final Color logoColor;

  const CustomLogo({
    required this.icon,
    this.width = 80,
    this.height = 80,
    this.imgWidth = 21,
    this.imgHeight = 24,
    this.logoColor = WTWColor.primary,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(28.w),
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: logoColor,
        shape: BoxShape.circle
      ),
      child: Image.asset(
        icon,
        width: imgWidth.w,
        height: imgHeight.h,
        scale: 4,
      ),
    );
  }
}
