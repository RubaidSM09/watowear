import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/missions/controllers/reward_achievements_controller.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/badge_collection_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/milestones_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards_achievements_upper_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class RewardAchievementsView extends GetView<RewardAchievementsController> {
  const RewardAchievementsView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(RewardAchievementsController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'Reward & Achievements'),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.sp,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(26),
                          blurRadius: 6.r,
                          offset: Offset(0.w, 4.h),
                        ),
                        BoxShadow(
                          color: Colors.black.withAlpha(26),
                          blurRadius: 15.r,
                          offset: Offset(0.w, 10.h),
                        ),
                      ]
                  ),
                  child: Image.asset(
                    'assets/images/style_missions/more.png',
                    scale: 4,
                  ),
                )

              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 26.5.h,),
        
                RewardsAchievementsUpperSection(),
        
                SizedBox(height: 20.h,),
        
                BadgeCollectionSection(
                  selectedBadgeTypes: controller.selectedBadgeType,
                ),
        
                SizedBox(height: 21.h,),
        
                MilestonesSection(),
        
                SizedBox(height: 21.h,),
        
                RewardsSection(),
        
                SizedBox(height: 47.67028809.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
