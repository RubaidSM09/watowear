import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_colors.dart';
import '../custom_buttons.dart';

class ThisMonthStyleSection extends StatelessWidget {
  const ThisMonthStyleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'This Month\'s Style',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 18.25.sp,
          ),
        ),

        SizedBox(height: 18.24.h,),

        Container(
          width: 390.w,
          padding: EdgeInsets.all(19.39.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.12.r),
              gradient: LinearGradient(
                colors: [
                  WTWColor.primary.withAlpha(8),
                  WTWColor.primary.withAlpha(3),
                ],
              ),
              border: Border.all(
                color: WTWColor.primary.withAlpha(20),
              )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.54.w),
                    decoration: BoxDecoration(
                        color: WTWColor.accent.withAlpha(26),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                        )
                    ),
                    child: Image.asset(
                      'assets/images/profile/style_breakdown.png',
                      scale: 4,
                    ),
                  ),

                  SizedBox(width: 18.25.w,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Style Breakdown',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                      Text(
                        'Based on 28 outfits worn',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 13.68.h,),

              StyleBreakdownRow(title: 'Casual', percentage: 65,),

              SizedBox(height: 9.122983627.h,),

              StyleBreakdownRow(title: 'Smart Casual', percentage: 25,),

              SizedBox(height: 9.122983627.h,),

              StyleBreakdownRow(title: 'Formal', percentage: 10,),
            ],
          ),
        )
      ],
    );
  }
}

class StyleBreakdownRow extends StatelessWidget {
  final String title;
  final double percentage;

  const StyleBreakdownRow({
    required this.title,
    required this.percentage,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF4B5563),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.96.sp,
          ),
        ),
        Text(
          '$percentage%',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.96.sp,
          ),
        )
      ],
    );
  }
}
