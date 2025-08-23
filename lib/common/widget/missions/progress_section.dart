import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.88.w),
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
            children: [
              Text(
                'Your Progress',
                style: TextStyle(
                  color: Color(0xFF4A4A4A),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w700,
                  fontSize: 19.61.sp,
                ),
              ),
              Text(
                'Level 3',
                style: TextStyle(
                  color: WTWColor.primary,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w700,
                  fontSize: 15.25.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 17.42720573.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.shrink(),

              ProgressInfo(
                count: 8,
                text: 'Completed',
                color: WTWColor.accent,
              ),

              ProgressInfo(
                count: 3,
                text: 'Active',
              ),

              ProgressInfo(
                count: 1240,
                text: 'Points',
              ),

              SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressInfo extends StatelessWidget {
  final int count;
  final String text;
  final Color color;
  
  const ProgressInfo({
    required this.count,
    required this.text,
    this.color = const Color(0xFF4A4A4A),
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$count',
          style: TextStyle(
            color: color,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w900,
            fontSize: 26.15.sp,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF828282),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 13.07.sp,
          ),
        ),
      ],
    );
  }
}
