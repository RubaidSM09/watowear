import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_colors.dart';

class NotificationsUpperSection extends StatelessWidget {
  const NotificationsUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(17.1.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                WTWColor.primary,
                WTWColor.accent,
              ],
            ),
            border: Border.all(color: Color(0xFFE5E7EB)),
          ),
          child: Image.asset(
            'assets/images/home/notifications/notifications_upper_section_icon.png',
            scale: 4,
          ),
        ),

        SizedBox(
          width: 303.3333435058594.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9.12.w, vertical: 8.04.h),
                    decoration: BoxDecoration(
                      color: WTWColor.accent,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(4.56.r),
                    ),
                    child: Text(
                      'New Outfit',
                      style: TextStyle(
                        color: Color(0xFFF4F1EB),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.68.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 9.121958313.w,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9.12.w, vertical: 8.04.h),
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(153),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(4.56.r),
                    ),
                    child: Text(
                      '2 min ago',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.68.sp,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.19087776.h,),

              Text(
                'Your new outfit is ready!',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 22.81.sp,
                ),
              ),

              SizedBox(height: 10.19087776.h,),

              Text(
                'Based on your style preferences and today\'s weather, we\'ve created the perfect look for you.',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 15.96.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
