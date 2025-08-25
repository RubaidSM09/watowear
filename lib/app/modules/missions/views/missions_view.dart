import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/missions/views/reward_achievements_view.dart';
import 'package:watowear_chole/common/widget/missions/active_completed_all_selection_section.dart';
import 'package:watowear_chole/common/widget/missions/ask_chloe_help_mission.dart';
import 'package:watowear_chole/common/widget/missions/mission_card.dart';
import 'package:watowear_chole/common/widget/missions/missions_level_section.dart';
import 'package:watowear_chole/common/widget/missions/progress_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/missions_controller.dart';

class MissionsView extends GetView<MissionsController> {
  const MissionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {  },
          child: Image.asset(
            'assets/images/home/menu.png',
            width: 17.5.w,
            height: 15.h,
            scale: 4,
          ),
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'Style Mission'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 26.5.h,),

              ActiveCompletedAllSelectionSection(),

              SizedBox(height: 20.h,),

              GestureDetector(
                onTap: () => Get.to(RewardAchievementsView()),
                child: MissionsLevelSection(),
              ),

              SizedBox(height: 20.h,),

              AskChloeHelpMission(),

              SizedBox(height: 20.h,),

              ProgressSection(),

              SizedBox(height: 20.h,),

              MissionCard(
                icon: 'assets/images/style_missions/upload_new_item.png',
                title: 'Upload 10 New Items',
                description: 'Add items to build your digital wardrobe',
                gainedXP: 50,
                totalMissions: 10,
                completedMissions: 7,
              ),

              SizedBox(height: 20.h,),

              MissionCard(
                icon: 'assets/images/style_missions/create_outfit.png',
                title: 'Create 5 Outfits',
                description: 'Mix and match your wardrobe items',
                gainedXP: 75,
                totalMissions: 5,
                completedMissions: 2,
              ),

              SizedBox(height: 20.h,),

              MissionCard(
                icon: 'assets/images/style_missions/tag_items.png',
                title: 'Tag 20 Items',
                description: 'Help AI understand your style better',
                gainedXP: 30,
                totalMissions: 20,
                completedMissions: 0,
              ),

              SizedBox(height: 36.86547852.h,),
            ],
          ),
        ),
      ),

      floatingActionButton: GestureDetector(
        onTap: () {  },
        child: Container(
          width: 51.w,
          height: 51.w,
          decoration: BoxDecoration(
            color: WTWColor.accent,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/home/voice.png',
                width: 13.12417984008789.w,
                height: 19.0897159576416.h,
              ),
              SizedBox(height: 3.18.h,),
              Text(
                'Ask Chloé',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 5.13.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
