import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class DetectedCapturedRemainingSection extends StatelessWidget {
  const DetectedCapturedRemainingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox.shrink(),

        DetectedCapturedRemainingColumn(
          upperText: '2',
          lowerText: 'Detected',
        ),

        DetectedCapturedRemainingColumn(
          upperText: '1',
          lowerText: 'Captured',
        ),

        DetectedCapturedRemainingColumn(
          upperText: '4',
          lowerText: 'Remaining',
        ),

        SizedBox.shrink(),
      ],
    );
  }
}

class DetectedCapturedRemainingColumn extends StatelessWidget {
  final String upperText;
  final String lowerText;

  const DetectedCapturedRemainingColumn({
    required this.upperText,
    required this.lowerText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          upperText,
          style: TextStyle(
            color: WTWColor.primary,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 22.81.sp,
          ),
        ),

        Text(
          lowerText,
          style: TextStyle(
            color: Color(0xFF666666),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 13.68.sp,
          ),
        ),
      ],
    );
  }
}
