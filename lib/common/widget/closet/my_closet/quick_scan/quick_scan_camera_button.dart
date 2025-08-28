import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class QuickScanCameraButton extends StatelessWidget {
  const QuickScanCameraButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(31.93.r),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: WTWColor.primary,
        border: Border.all(
          color: Colors.white,
          width: 4.56.r,
        ),
        boxShadow: [
          BoxShadow(
            color: WTWColor.primary.withAlpha(77),
            blurRadius: 18.25.r,
            offset: Offset(0.w, 4.56.h),
          )
        ]
      ),
      child: Image.asset(
        'assets/images/closet/my_closet/quick_scan/quick_scan_capture.png',
        scale: 4,
      ),
    );
  }
}
