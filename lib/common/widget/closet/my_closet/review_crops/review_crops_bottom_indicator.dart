import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class ReviewCropsBottomIndicator extends StatelessWidget {
  const ReviewCropsBottomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 7.2.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 9.600006103515625.w,
          height: 9.600006103515625.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.primary,
            border: Border.all(color: Color(0xFFE5E7EB),),
          ),
        ),

        Container(
          width: 9.600006103515625.w,
          height: 9.600006103515625.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.secondary_bg,
            border: Border.all(color: Color(0xFFE5E7EB),),
          ),
        ),

        Container(
          width: 9.600006103515625.w,
          height: 9.600006103515625.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.secondary_bg,
            border: Border.all(color: Color(0xFFE5E7EB),),
          ),
        ),

        Container(
          width: 9.600006103515625.w,
          height: 9.600006103515625.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.secondary_bg,
            border: Border.all(color: Color(0xFFE5E7EB),),
          ),
        ),

        Container(
          width: 9.600006103515625.w,
          height: 9.600006103515625.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.secondary_bg,
            border: Border.all(color: Color(0xFFE5E7EB),),
          ),
        ),
      ],
    );
  }
}
