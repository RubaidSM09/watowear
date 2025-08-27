import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class RewardPointsBottomSection extends StatelessWidget {
  const RewardPointsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'That\'s all your points history!',
          style: TextStyle(
            color: Color(0xFF6B7280),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.96.sp,
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          'Keep earning to see more',
          style: TextStyle(
            color: Color(0xFF9CA3AF),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 13.68.sp,
          ),
        ),
      ],
    );
  }
}
