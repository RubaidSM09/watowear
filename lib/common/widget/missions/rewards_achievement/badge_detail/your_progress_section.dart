import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class YourProgressSection extends StatelessWidget {
  const YourProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Progress',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 20.53.sp,
          ),
        ),

        SizedBox(height: 20.h,),

        Container(
          padding: EdgeInsets.all(19.39.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: WTWColor.secondary_bg,
              width: 1.14.r,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Next Badge',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.96.sp,
                    ),
                  ),
                  Text(
                    'Style Explorer',
                    style: TextStyle(
                      color: WTWColor.accent,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.96.sp,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h,),

              Stack(
                children: [
                  Container(
                    width: 351.2280578613281.w,
                    height: 9.122806549072266.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E7EB),
                      borderRadius: BorderRadius.circular(11402.37.r),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                  Container(
                    width: ((351.2280578613281*3)/5).w,
                    height: 9.122806549072266.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          WTWColor.primary,
                          WTWColor.accent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(11402.37.r),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${3} of ${5} styles tried',
                    style: TextStyle(
                      color: Color(0xFF4B5563),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.68.sp,
                    ),
                  ),
                  Text(
                    '${(3/5)*100}% complete',
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
        )
      ],
    );
  }
}
