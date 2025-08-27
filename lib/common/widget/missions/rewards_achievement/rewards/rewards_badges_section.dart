import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_badges_collections.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_badges_level_section.dart';

class RewardsBadgesSection extends StatelessWidget {
  const RewardsBadgesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RewardsBadgesLevelSection(),

        SizedBox(height: 20.h,),

        RewardsBadgesCollections(),
      ],
    );
  }
}