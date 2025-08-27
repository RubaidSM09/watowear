import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class RelatedAchievementsSection extends StatelessWidget {
  const RelatedAchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Related Achievements',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 20.53.sp,
          ),
        ),

        SizedBox(height: 20.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RelatedAchievementsCard(
              icon: 'assets/images/style_missions/rewards_achievements/badge_details/trendsetter.png',
              title: 'Trendsetter',
              subtitle: 'Create 10 outfits',
              isUnlocked: true,
            ),

            RelatedAchievementsCard(
              icon: 'assets/images/style_missions/rewards_achievements/badge_details/style_explorer.png',
              title: 'Style Explorer',
              subtitle: 'Try 5 different styles',
              isUnlocked: false,
            ),
          ],
        )
      ],
    );
  }
}

class RelatedAchievementsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final bool isUnlocked;

  const RelatedAchievementsCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isUnlocked,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isUnlocked ? 1 : 0.6,
      child: Container(
        width: 185.877197265625.w,
        padding: EdgeInsets.symmetric(vertical: 19.39.r),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: WTWColor.secondary_bg,
              width: 1.14.r,
            )
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(17.11.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    isUnlocked ? WTWColor.primary : Color(0xFFE5E7EB),
                    isUnlocked ? WTWColor.accent : Color(0xFFE5E7EB),
                  ],
                ),
              ),
              child: Image.asset(
                icon,
                scale: 4,
              ),
            ),

            SizedBox(height: 5,),

            Text(
              title,
              style: TextStyle(
                color: WTWColor.text_icons,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 15.96.sp,
              ),
            ),

            SizedBox(height: 5,),

            Text(
              subtitle,
              style: TextStyle(
                color: Color(0xFF4B5563),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.68.sp,
              ),
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  isUnlocked ?
                  'assets/images/style_missions/rewards_achievements/badge_details/unlocked_green.png'
                      :
                  'assets/images/style_missions/rewards_achievements/badge_details/locked.png',
                  scale: 4,
                ),
                Text(
                  isUnlocked ? 'Unlocked' : 'Locked',
                  style: TextStyle(
                    color: isUnlocked ? Color(0xFF16A34A) : Color(0xFF9CA3AF),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.68.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
