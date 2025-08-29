import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class RewardsPointsBar extends StatelessWidget {
  const RewardsPointsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 95.21929931640625.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(
          colors: [
            WTWColor.primary.withAlpha(13),
            WTWColor.accent.withAlpha(13),
          ],
        ),
        border: Border.all(
          color: WTWColor.primary.withAlpha(26),
          width: 1.14.r,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Stack(
          children: [
            Positioned(
              top: 1.14.h,
              left: 1.14.w,
              child: Opacity(
                opacity: 0.3,
                child: Container(
                  width: 387.71929931640625.w,
                  height: 2.2807016372680664.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          WTWColor.primary,
                          WTWColor.accent,
                        ],
                      )
                  ),
                ),
              ),
            ),

            Positioned(
              top: 14.82.h,
              left: 19.39.w,
              child: SizedBox(
                width: 351.2280578613281.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Level 3',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),

                        SizedBox(width: 25.w,),

                        Text(
                          '1,250 / 1,500 XP',
                          style: TextStyle(
                            color: WTWColor.text_icons,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.96.sp,
                          ),
                        )
                      ],
                    ),

                    Icon(
                      Icons.arrow_forward_ios,
                      color: WTWColor.primary,
                      size: 18.24561309814453.r,
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              top: 50.18.h,
              left: 19.39.w,
              child: Stack(
                children: [
                  Container(
                    width: 351.2280578613281.w,
                    height: 6.842105388641357.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.42.r),
                      color: WTWColor.secondary_bg.withAlpha(77),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                  Container(
                    width: ((351.2280578613281*1250)/1500).w,
                    height: 6.842105388641357.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.42.r),
                      gradient: LinearGradient(
                        colors: [
                          WTWColor.primary,
                          WTWColor.accent,
                        ],
                      ),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 61.58.h,
              left: 19.39.w,
              child: SizedBox(
                width: 351.2280578613281.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${1500-1250} XP to Level ${3+1}',
                      style: TextStyle(
                        color: WTWColor.primary,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.54.sp,
                      ),
                    ),
                    Text(
                      '🏆 Next: Style Master',
                      style: TextStyle(
                        color: WTWColor.primary,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.54.sp,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
