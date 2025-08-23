import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class AskChloeHelpMission extends StatelessWidget {
  const AskChloeHelpMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.16.w),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(153),
        borderRadius: BorderRadius.circular(13.07.r),
        border: Border.all(
          color: Color(0xFFE5E7EB).withAlpha(204),
          width: 1.09.sp,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 43.57542037963867.w,
            height: 43.57542037963867.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC86A3B),
                width: 2.sp,
              )
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/home/item_details/profile_pic.jpg',
              ),
            ),
          ),

          SizedBox(width: 13.07457962.w,),

          Text(
            '“Ask Chloé to help with your missions”',
            style: TextStyle(
              color: WTWColor.primary,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w500,
              fontSize: 13.07.sp,
            ),
          )
        ],
      ),
    );
  }
}
