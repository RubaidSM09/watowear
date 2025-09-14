import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/missions/controllers/rewards_controller.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/point_vs_badge_selection_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_badges_collections.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_badges_level_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class RewardsView extends GetView<RewardsController> {
  const RewardsView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(RewardsController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Rewards'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                Padding(
                  padding: EdgeInsets.all(25.w),
                  child: Obx(() {
                    return Column(
                      children: [
                        PointVsBadgeSelectionSection(isBadgeSelected: controller.isBadge.value,),
                      ],
                    );
                  }),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
