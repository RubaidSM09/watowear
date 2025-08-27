import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class RewardsBadgesLevelSection extends StatelessWidget {
  const RewardsBadgesLevelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.68.r),
        border: Border.all(
          color: Color(0xFFCDCDC0),
          width: 1.14.sp,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15.82.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        WTWColor.primary,
                        WTWColor.accent,
                      ],
                    ),
                    border: Border.all(color: Color(0xFFE5E7EB))
                ),
                child: Image.asset(
                  'assets/images/style_missions/rewards_achievements/rewards/rewartds_badge_level.png',
                  scale: 4,
                ),
              ),

              SizedBox(width: 13.68.w,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.09.h,),
                  Text(
                    'Level 3 Stylist',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.25.sp,
                    ),
                  ),
                  SizedBox(height: 1.28.h,),
                  Text(
                    '1,250 XP • 15 Badges',
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '15/24',
                style: TextStyle(
                  color: WTWColor.accent,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 27.37.sp,
                ),
              ),
              Text(
                'Badges Earned',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.68.sp,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
