import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class ActiveCompletedAllSelectionSection extends StatelessWidget {
  const ActiveCompletedAllSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActiveCompletedAllSelectionCard(
          icon: 'assets/images/style_missions/active.png',
          text: 'Active',
          isSelected: true,
        ),

        ActiveCompletedAllSelectionCard(
          icon: 'assets/images/style_missions/completed.png',
          text: 'Completed',
        ),

        ActiveCompletedAllSelectionCard(
          icon: 'assets/images/style_missions/all.png',
          text: 'All',
        ),
      ],
    );
  }
}

class ActiveCompletedAllSelectionCard extends StatelessWidget {
  final String icon;
  final String text;
  final bool isSelected;

  const ActiveCompletedAllSelectionCard({
    required this.icon,
    required this.text,
    this.isSelected = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122.01117706298828.w,
      padding: EdgeInsets.symmetric(vertical: 11.98.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.72.r),
          color: isSelected ? WTWColor.accent : Colors.white,
          border: Border.all(color: Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(12),
              blurRadius: 2.18.r,
              offset: Offset(0.w, 1.09.h),
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            scale: 4,
          ),

          SizedBox(width: 8.711452866.w,),

          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Color(0xFF4A4A4A),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w700,
              fontSize: 15.25.sp,
            ),
          )
        ],
      ),
    );
  }
}
