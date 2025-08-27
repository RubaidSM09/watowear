import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class MissionRewardsSetcion extends StatelessWidget {
  const MissionRewardsSetcion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mission Rewards',
          style: TextStyle(
            color: Color(0xFF212121),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w600,
            fontSize: 19.94.sp,
          ),
        ),

        SizedBox(height: 13.29727394.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MissionRewardsCard(
              icon: 'assets/images/style_missions/mission_details/mission_details_xp.png',
              title: '+50 XP',
              subtitle: 'Experience Points',
              color: WTWColor.accent,
            ),

            MissionRewardsCard(
              icon: 'assets/images/style_missions/mission_details/mission_details_photographer.png',
              title: 'Photographer',
              subtitle: 'New Badge',
              color: WTWColor.primary,
            ),
          ],
        )
      ],
    );
  }
}

class MissionRewardsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;

  const MissionRewardsCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 21.65.w, vertical: 20.73.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
        color: color,
      ),
      child: Column(
        children: [
          Image.asset(
            icon,
            scale: 4,
          ),

          SizedBox(height: 9.425452118.h,),

          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w700,
              fontSize: 19.94.sp,
            ),
          ),

          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white.withAlpha(204),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w700,
              fontSize: 13.3.sp,
            ),
          ),
        ],
      ),
    );
  }
}
