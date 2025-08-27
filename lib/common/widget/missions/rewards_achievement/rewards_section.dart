import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class RewardsSection extends StatelessWidget {
  const RewardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rewards',
              style: TextStyle(
                color: Color(0xFF2F2E2D),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 19.61.sp,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Color(0xFF2F2E2D),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 12.61.sp,
              ),
            ),
          ],
        ),

        SizedBox(height: 21.h),

        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: RewardsSectionCard(
                  icon: 'assets/images/style_missions/rewards_achievements/voice_pioneer.png',
                  title: 'Voice Pioneer',
                  subtitle: 'Used voice assistant',
                ),
              ),

              Flexible(
                child: RewardsSectionCard(
                  icon: 'assets/images/style_missions/rewards_achievements/wardrobe_starter.png',
                  title: 'Wardrobe Starter',
                  subtitle: 'Added 5 items to closet',
                ),
              ),

              Flexible(
                child: RewardsSectionCard(
                  icon: 'assets/images/style_missions/rewards_achievements/first_outfit.png',
                  title: 'First Outfit',
                  subtitle: 'Created your first AI outfit',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RewardsSectionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const RewardsSectionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.44.w, right: 10.44.w, top: 19.12.h,),
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
                colors: [
                  WTWColor.primary,
                  WTWColor.accent,
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
