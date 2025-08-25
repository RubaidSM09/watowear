import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_colors.dart';

class NotificationsWeatherContextSection extends StatelessWidget {
  const NotificationsWeatherContextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(27.37.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/home/notifications/weather_context.png',
                scale: 4,
              ),
              SizedBox(width: 9.122983627.w,),
              Text(
                'Weather Context',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.25.sp,
                ),
              )
            ],
          ),

          SizedBox(height: 18.24158035.h,),

          Container(
            padding: EdgeInsets.all(13.68.w),
            decoration: BoxDecoration(
              color: Color(0xFFF4F1EB),
              borderRadius: BorderRadius.circular(13.68.r),
              border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(15.96.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF60A5FA),
                        Color(0xFF2563EB),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(9.12.r),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Image.asset(
                    'assets/images/home/notifications/partly_cloudy.png',
                    scale: 4,
                  ),
                ),

                SizedBox(
                  width: 110.43585968017578.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Partly Cloudy',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                      Text(
                        '18°C • Light breeze',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  width: 97.1080093383789.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Perfect for',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.68.sp,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      Text(
                        'Light layers',
                        style: TextStyle(
                          color: WTWColor.accent,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
