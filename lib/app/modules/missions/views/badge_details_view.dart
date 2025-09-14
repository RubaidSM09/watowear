import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/badge_detail/related_achievements_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/badge_detail/your_progress_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/missions/rewards_achievement/badge_detail/badge_details_upper_section.dart';

class BadgeDetailsView extends GetView {
  const BadgeDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
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
                WTWAppbarText(text: 'Badge Detail'),
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
        
                BadgeDetailsUpperSection(),
        
                SizedBox(height: 26.5.h,),
        
                RelatedAchievementsSection(),
        
                SizedBox(height: 26.5.h,),
        
                YourProgressSection(),
        
                SizedBox(height: 26.5.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
