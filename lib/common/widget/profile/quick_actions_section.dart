import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_colors.dart';
import '../custom_buttons.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 18.25.sp,
          ),
        ),

        SizedBox(height: 18.24.h,),

        QuickActionCard(
          title: 'Edit Profile',
          description: 'Update personal information',
          color: Color(0xFF6A6D57).withAlpha(26),
          icon: 'assets/images/profile/edit_profile.png',
        ),

        SizedBox(height: 13.68333588.h,),

        QuickActionCard(
          title: 'Preferences',
          description: 'Style & notification settings',
          color: Color(0xFFBB5C13).withAlpha(26),
          icon: 'assets/images/profile/preferences.png',
        ),

        SizedBox(height: 13.68333588.h,),

        QuickActionCard(
          title: 'Achievements',
          description: 'View badges & rewards',
          color: Color(0xFFFEF9C3),
          icon: 'assets/images/profile/achievements.png',
          count: 3,
        ),

        SizedBox(height: 13.68333588.h,),

        QuickActionCard(
          title: 'Wardrobe Analytics',
          description: 'Usage insights & trends',
          color: Color(0xFFE0E7FF),
          icon: 'assets/images/profile/wardrobe_analysis.png',
        ),
      ],
    );
  }
}

class QuickActionCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String icon;
  final int count;

  const QuickActionCard({
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    this.count = 0,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      padding: EdgeInsets.all(18.25.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.12.r),
        color: Colors.white,
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(11.4.w),
                decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFE5E7EB),
                    )
                ),
                child: Image.asset(
                  icon,
                  scale: 4,
                ),
              ),
              SizedBox(width: 13.68596725.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.25.sp,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.96.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              count>0 ? Container(
                padding: EdgeInsets.all(7.39.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEF4444),
                  border: Border.all(color: Color(0xFFE5E7EB)),
                ),
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.68.sp,
                  ),
                ),
              ) : SizedBox.shrink(),

              count>0 ? SizedBox(width: 9.123.w,) : SizedBox.shrink(),

              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF9CA3AF),
                size: 18.24561309814453.sp,
              )
            ],
          )
        ],
      ),
    );
  }
}
