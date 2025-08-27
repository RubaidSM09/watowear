import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class TotalPointsEarnedSection extends StatelessWidget {
  const TotalPointsEarnedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(19.39.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: WTWColor.secondary_bg,
          width: 1.14.r,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(17.11.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      WTWColor.primary,
                      WTWColor.accent,
                    ],
                  ),
                ),
                child: Image.asset(
                  'assets/images/style_missions/rewards_achievements/rewards/total_points_earned.png',
                  scale: 4,
                ),
              ),

              SizedBox(width: 20.w,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Points Earned',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.25.sp,
                    ),
                  ),
                  Text(
                    'All time • Level 3',
                    style: TextStyle(
                      color: Color(0xFF4B5563),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.96.sp,
                    ),
                  ),
                ],
              )
            ],
          ),

          Column(
            children: [
              Text(
                '1,250',
                style: TextStyle(
                  color: WTWColor.accent,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 27.37.sp,
                ),
              ),
              Text(
                'XP Points',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.68.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
