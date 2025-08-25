import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardsAchievementsUpperSection extends StatelessWidget {
  const RewardsAchievementsUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 160.3575439453125.w,
              height: 160.3575439453125.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFEAE8E3), width: 13.94.sp),
              ),
            ),

            Container(
              width: 160.3575439453125.w,
              height: 160.3575439453125.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/style_missions/rewards_achievements/dashed_border.png',
                scale: 4,
              ),
            ),

            Column(
              children: [
                Container(
                  width: 69.72067260742188.w,
                  height: 69.72067260742188.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10892.77.r),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.36.sp,
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10892.77.r),
                    child: Image.asset(
                      'assets/images/home/item_details/profile_pic.jpg',
                      scale: 4,
                    ),
                  ),
                ),

                SizedBox(height: 4.359327393.h,),

                Text(
                  '2,450',
                  style: TextStyle(
                    color: Color(0xFF2F2E2D),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 26.15.sp,
                  ),
                ),

                Text(
                  'Total XP',
                  style: TextStyle(
                    color: Color(0xFFA7A39B),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.07.sp,
                  ),
                ),
              ],
            )
          ],
        ),

        SizedBox(height: 20.h),

        Text(
          'Sofia Chen',
          style: TextStyle(
            color: Color(0xFF2F2E2D),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 21.79.sp,
          ),
        ),
        Text(
          'Level 5 Stylist',
          style: TextStyle(
            color: Color(0xFFA7A39B),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 17.43.sp,
          ),
        ),
        Text(
          '150 XP to Level 6',
          style: TextStyle(
            color: Color(0xFFC16A2B),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w600,
            fontSize: 17.43.sp,
          ),
        ),
      ],
    );
  }
}
