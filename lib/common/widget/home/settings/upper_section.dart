import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class SettingsUpperSection extends StatelessWidget {
  const SettingsUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 264.5614013671875.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.12.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          SizedBox(height: 27.24.h,),

          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 45.61403656.r,
                backgroundImage: AssetImage(
                  'assets/images/home/settings/profile_pic.jpg',
                ),
              ),
              Positioned(
                top: 63.86.h,
                left: 63.86.w,
                child: Container(
                  padding: EdgeInsets.all(6.84.w),
                  decoration: BoxDecoration(
                    color: WTWColor.primary,
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Image.asset(
                    'assets/images/home/settings/camera.png',
                    scale: 4,
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 18.25.h,),

          Text(
            'Emma Johnson',
            style: TextStyle(
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 20.53.sp,
            ),
          ),

          SizedBox(height: 4.56.h,),

          Text(
            'emma.johnson@email.com',
            style: TextStyle(
              color: Color(0xFF4B5563),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 15.96.sp,
            ),
          ),

          SizedBox(height: 13.68.h,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.68.w, vertical: 5.7.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11402.37.r),
              color: Colors.black,
              border: Border.all(color: Color(0xFFE5E7EB))
            ),
            child: Text(
              'Level 12',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.68.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
