import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

class YourTopOutfitSection extends StatelessWidget {
  const YourTopOutfitSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Top Outfit',
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
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9.12.r),
                    child: Image.asset(
                      'assets/images/profile/summer_casual.png',
                      width: 72.98245239257812.w,
                      height: 72.98245239257812.h,
                      scale: 4,
                    ),
                  ),

                  Positioned(
                    top: -4.56.h,
                    left: 54.74.w,
                    child: Container(
                      padding: EdgeInsets.all(3.71.w),
                      decoration: BoxDecoration(
                        color: Color(0xFFEAB308),
                        shape: BoxShape.circle
                      ),
                      child: Image.asset(
                        'assets/images/profile/crown.png',
                        scale: 4,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(width: 18.25.w,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summer Casual',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.25.sp,
                    ),
                  ),
                  SizedBox(height: 4.56.h,),
                  Text(
                    'Worn 12 times this month',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.96.sp,
                    ),
                  ),
                  SizedBox(height: 9.12.h,),
                  Row(
                    children: [
                      WTWPrimaryProfileTopOutfitButton(text: 'Edit', onTap: () {  }),
                      SizedBox(width: 9.125895844.w,),
                      WTWSecondaryProfileTopOutfitButton(text: 'View', onTap: () {  }),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
