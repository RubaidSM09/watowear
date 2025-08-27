import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class RewardsBadgesCollections extends StatelessWidget {
  const RewardsBadgesCollections({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 18.24.h,
        children: [
          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/first_outfit.png',
              title: 'First Outfit',
              subtitle: 'Created your first AI outfit',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/wardrobe_starter.png',
              title: 'Wardrobe Starter',
              subtitle: 'Added 5 items to closet',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/voice_pioneer.png',
              title: 'Voice Pioneer',
              subtitle: 'Used voice assistant',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/style_explorer.png',
              title: 'Style Explorer',
              subtitle: 'Try 5 different styles',
              enabled: false,
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/social_share.png',
              title: 'Social Sharer',
              subtitle: 'Shared your first outfit',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/dya_7_streak.png',
              title: '7-Day Streak',
              subtitle: 'Use app 7 days in a row',
              enabled: false,
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/trendsetter.png',
              title: 'Trendsetter',
              subtitle: 'Created 10 outfits',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/color_master.png',
              title: 'Color Master',
              subtitle: 'Use all color categories',
              enabled: false,
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/organizer.png',
              title: 'Organizer',
              subtitle: 'Tagged 20 items',
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/ai_whisperer.png',
              title: 'AI Whisperer',
              subtitle: '50 voice interactions',
              enabled: false,
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/seasonal_stylist.png',
              title: 'Seasonal Stylist',
              subtitle: 'Create outfits for all seasons',
              enabled: false,
            ),
          ),

          Flexible(
            child: RewardBadgesCard(
              icon: 'assets/images/style_missions/rewards_achievements/rewards/perfectionist.png',
              title: 'Perfectionist',
              subtitle: 'Complete all daily missions',
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }
}

class RewardBadgesCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final bool enabled;

  const RewardBadgesCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.enabled = true,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.57894897460938.h,
      padding: EdgeInsets.only(left: 10.44.w, right: 10.44.w, top: 19.12.h, bottom: 19.12.h,),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.99.r),
          border: Border.all(
            color: Color(0xFFF4F1EB),
            width: 1.12.sp,
          )
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(23.61.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: enabled ? [
                  WTWColor.primary,
                  WTWColor.accent,
                ] :
                [
                  Color(0xFFF4F1EB),
                  Color(0xFFF4F1EB),
                ],
              ),
              border: Border.all(color: Color(0xFFF4F1EB),),
            ),
            child: Image.asset(
              icon,
              scale: 4,
            ),
          ),

          SizedBox(height: 9.h,),

          SizedBox(
            width: 98.125.w,
            child: Text(
              title,
              style: TextStyle(
                color: WTWColor.text_icons,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.49.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 4.499580612.h,),

          SizedBox(
            width: 95.96629333496094.w,
            child: Text(
              subtitle,
              style: TextStyle(
                color: Color(0xFF666666),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 11.24.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
