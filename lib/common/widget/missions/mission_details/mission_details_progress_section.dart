import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_colors.dart';

class MissionDetailsProgressSection extends StatelessWidget {
  const MissionDetailsProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.16.w),
      decoration: BoxDecoration(
        color: WTWColor.primary,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          Text(
            'Upload 10 New Items',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 31.86.sp,
            ),
          ),

          SizedBox(height: 4.433636017.h,),

          Text(
            'Add items to build your digital wardrobe',
            style: TextStyle(
              color: Colors.white.withAlpha(204),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 15.51.sp,
            ),
          ),

          SizedBox(height: 17.72090805.h,),

          Stack(
            children: [
              Container(
                width: 345.6818542480469.w,
                height: 8.86363697052002.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11078.44.r),
                  color: Colors.white.withAlpha(77),
                  // border: Border.all(color: Color(0xFFE5E7EB)),
                ),
              ),
              Container(
                width: ((345.6818542480469*2)/4).w,
                height: 8.86363697052002.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11078.44.r),
                  color: Colors.white,
                  // border: Border.all(color: Color(0xFFE5E7EB)),
                ),
              ),
            ],
          ),

          SizedBox(height: 4.436363029.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Progress',
                style: TextStyle(
                  color: Colors.white.withAlpha(204),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.3.sp,
                ),
              ),
              Text(
                '2/4 tasks completed',
                style: TextStyle(
                  color: Colors.white.withAlpha(204),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.3.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
