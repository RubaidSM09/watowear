import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class BadgeDetailsUpperSection extends StatelessWidget {
  const BadgeDetailsUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.36.h,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: Color(0xFFF4F1EB),
          width: 1.14.r,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(51),
            blurRadius: 36.49.r,
            offset: Offset(0.w, 9.12.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(45.61.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  WTWColor.primary,
                  WTWColor.accent,
                ],
              ),
              border: Border.all(color: Color(0xFFF4F1EB),),
            ),
            child: Image.asset(
              'assets/images/style_missions/rewards_achievements/badge_details/first_outfit.png',
              scale: 4,
            ),
          ),

          SizedBox(height: 10.h,),

          Text(
            'First Outfit',
            style: TextStyle(
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 31.93.sp,
            ),
          ),

          SizedBox(height: 20.h,),

          Text(
            'Congratulations! You\'ve successfully created your very first AI-generated outfit. This is just the beginning of your style journey with WatoWear.',
            style: TextStyle(
              color: Color(0xFF666666),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 18.25.sp,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 20.h,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.25.w, vertical: 18.25.h,),
            decoration: BoxDecoration(
              color: Color(0xFFF4F1EB),
              borderRadius: BorderRadius.circular(18.25.r),
              border: Border.all(color: Color(0xFFE5E7EB),),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),

                    Row(
                      children: [
                        Image.asset(
                          'assets/images/style_missions/rewards_achievements/badge_details/unlocked.png',
                          scale: 4,
                        ),
                        SizedBox(width: 5.w,),
                        Text(
                          'Unlocked',
                          style: TextStyle(
                            color: Color(0xFF16A34A),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.96.sp,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 7.5.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date Earned',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),

                    Text(
                      'January 15, 2025',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 7.5.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'XP Reward',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),

                    Text(
                      '+50 XP',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 7.5.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rarity',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),

                    Text(
                      'Common',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
