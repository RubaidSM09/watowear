import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
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

              MissionsLevelSection(),

              SizedBox(height: 20.h,),

              AskChloeHelpMission(),

              SizedBox(height: 20.h,),

              ProgressSection(),

              SizedBox(height: 20.h,),

              MissionCard(),

              SizedBox(height: 20.h,),

              MissionCard(),

              SizedBox(height: 20.h,),

              MissionCard(),
            ],
          ),
        ),
      ),
    );
  }
}
