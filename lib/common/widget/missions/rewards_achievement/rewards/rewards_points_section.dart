import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/points_history_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/reward_points_bottom_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_points_bar.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/total_points_earned_section.dart';

import '../../../../custom_colors.dart';

class RewardsPointsSection extends StatelessWidget {
  const RewardsPointsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RewardsPointsBar(),

        SizedBox(height: 24.h,),

        TotalPointsEarnedSection(),

        SizedBox(height: 24.h,),

        PointsHistorySection(
          time: 'Today',
          pointsHistory: [
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/created_new_outfit.png',
              'title': 'Created new outfit',
              'points': 25,
              'time': '2:30 PM',
              'missionType': 'Daily Style Mission',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/added_item_to_wardrobe.png',
              'title': 'Added item to wardrobe',
              'points': 15,
              'time': '10:15 AM',
              'missionType': 'Wardrobe Builder',
            }
          ],
        ),

        PointsHistorySection(
          time: 'Yesterday',
          pointsHistory: [
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/reached_level_3.png',
              'title': 'Reached Level 3 milestone',
              'points': 100,
              'time': '6:45 PM',
              'missionType': 'Level Up Bonus',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/shared_outfit_social_media.png',
              'title': 'Shared outfit on social media',
              'points': 20,
              'time': '4:20 PM',
              'missionType': 'Social Sharer',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/voice_assistant_10_times.png',
              'title': 'Used voice assistant 10 times',
              'points': 30,
              'time': '2:10 PM',
              'missionType': 'Voice Pioneer',
            }
          ],
        ),

        PointsHistorySection(
          time: '3 Days Ago',
          pointsHistory: [
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/taqgged_20_wardrobe_items.png',
              'title': 'Tagged 20 wardrobe items',
              'points': 40,
              'time': '7:30 PM',
              'missionType': 'Organizer Mission',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/created_10th_outfit.png',
              'title': 'Created 10th outfit',
              'points': 50,
              'time': '3:15 PM',
              'missionType': 'Trendsetter Badge',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/completed_style_quiz.png',
              'title': 'Completed style quiz',
              'points': 75,
              'time': '5:00 PM',
              'missionType': 'Onboarding Complete',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/upload_first_wardrobe_item.png',
              'title': 'Uploaded first wardrobe item',
              'points': 50,
              'time': '4:45 PM',
              'missionType': 'First Upload',
            },
            {
              'icon': 'assets/images/style_missions/rewards_achievements/rewards/welcome_bonus.png',
              'title': 'Welcome bonus',
              'points': 100,
              'time': '4:30 PM',
              'missionType': 'Account Created',
            },
          ],
        ),

        RewardPointsBottomSection(),
      ],
    );
  }
}
