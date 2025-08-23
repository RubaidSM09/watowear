import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../custom_colors.dart';

class MissionCard extends StatelessWidget {
  const MissionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.07.r),
        border: Border.all(
          color: Color(0xFFE5E7EB).withAlpha(204),
          width: 1.09.sp,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(9.04.w),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: WTWColor.accent,
                        border: Border.all(color: Color(0xFFE5E7EB))
                    ),
                    child: Image.asset(
                      'assets/images/style_missions/upload_new_item.png',
                      scale: 4,
                    ),
                  ),
                  SizedBox(width: 17.42775574.w,),
                  SizedBox(
                    width: 204.80447387695312.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload 10 New Items',
                          style: TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w700,
                            fontSize: 17.43.sp,
                          ),
                        ),
                        Text(
                          'Add items to build your digital wardrobe',
                          style: TextStyle(
                            color: WTWColor.primary,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.25.sp,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Text(
                    '+50 XP',
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w700,
                      fontSize: 15.25.sp,
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Image.asset(
                    'assets/images/style_missions/info.png',
                    scale: 4,
                  )
                ],
              )
            ],
          ),

          SizedBox(height: 17.42932739.h,),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Progress',
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.07.sp,
                    ),
                  ),
                  Text(
                    '70% (7/10)',
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.07.sp,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 4.359831848.h,),

              Stack(
                children: [
                  Container(
                    width: 344.2458190917969.w,
                    height: 10.893855094909668.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10892.77.r),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                  Container(
                    width: (344.2458190917969*(70/100)).w,
                    height: 10.893855094909668.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF22C55E),
                      borderRadius: BorderRadius.circular(10892.77.r),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                ],
              )
            ],
          ),

          SizedBox(height: 21.78843948.h,),

          WTWPrimaryButton(text: 'Continue', onTap: () {  }),
        ],
      ),
    );
  }
}
