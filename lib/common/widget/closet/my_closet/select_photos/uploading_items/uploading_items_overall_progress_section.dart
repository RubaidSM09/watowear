import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class UploadingItemsOverallProgressSection extends StatelessWidget {
  const UploadingItemsOverallProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.25.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: WTWColor.text_icons.withAlpha(26),
            blurRadius: 9.12.r,
            offset: Offset(0.w, 2.28.h),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Overall Progress',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.25.sp,
                ),
              ),
              Text(
                '78%',
                style: TextStyle(
                  color: Color(0xFF4B5563),
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
                width: 353.50872802734375.w,
                height: 4.561402797698975.h,
                decoration: BoxDecoration(
                  color: WTWColor.secondary_bg,
                  // border: Border.all(color: Color(0xFFE5E7EB)),
                  borderRadius: BorderRadius.circular(2.28.r),
                ),
              ),

              Container(
                width: ((353.50872802734375*78)/100).w,
                height: 4.561402797698975.h,
                decoration: BoxDecoration(
                  color: WTWColor.primary,
                  // border: Border.all(color: Color(0xFFE5E7EB)),
                  borderRadius: BorderRadius.circular(2.28.r),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h,),

          Text(
            '3 completed, 2 uploading',
            style: TextStyle(
              color: Color(0xFF6B7280),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 13.68.sp,
            ),
          )
        ],
      ),
    );
  }
}
