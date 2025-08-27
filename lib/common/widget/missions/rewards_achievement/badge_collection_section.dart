import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class BadgeCollectionSection extends StatelessWidget {
  final List<RxBool> selectedBadgeTypes;

  const BadgeCollectionSection({required this.selectedBadgeTypes, super.key});

  @override
  Widget build(BuildContext context) {
    RxList<RxBool> selectedBadgeType = selectedBadgeTypes.obs;

    return Obx(() {
      return Column(
        children: [
          Row(
            children: [
              Text(
                'Badge Collection',
                style: TextStyle(
                  color: Color(0xFF2F2E2D),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 19.61.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 17.h),

          Stack(
            children: [
              Container(
                width: 390.h,
                height: 38.12849426269531.h,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFEAE8E3),
                      width: 1.09.sp,
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedBadgeType[0].value = true;
                      selectedBadgeType[1].value = false;
                      selectedBadgeType[2].value = false;
                    },
                    child: Container(
                      width: 124.18994140625.w,
                      height: 37.03910446166992.h,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedBadgeType[0].value
                                ? WTWColor.primary
                                : Colors.transparent,
                            width: 2.18.sp,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Missions',
                          style: TextStyle(
                            color: selectedBadgeType[0].value
                                ? WTWColor.primary
                                : Color(0xFFA7A39B),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedBadgeType[0].value = false;
                      selectedBadgeType[1].value = true;
                      selectedBadgeType[2].value = false;
                    },
                    child: Container(
                      width: 124.18994140625.w,
                      height: 37.03910446166992.h,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedBadgeType[1].value
                                ? WTWColor.primary
                                : Colors.transparent,
                            width: 2.18.sp,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Social',
                          style: TextStyle(
                            color: selectedBadgeType[1].value
                                ? WTWColor.primary
                                : Color(0xFFA7A39B),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedBadgeType[0].value = false;
                      selectedBadgeType[1].value = false;
                      selectedBadgeType[2].value = true;
                    },
                    child: Container(
                      width: 124.18994140625.w,
                      height: 37.03910446166992.h,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedBadgeType[2].value
                                ? WTWColor.primary
                                : Colors.transparent,
                            width: 2.18.sp,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Personal Style',
                          style: TextStyle(
                            color: selectedBadgeType[2].value
                                ? WTWColor.primary
                                : Color(0xFFA7A39B),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 26.h),

          ?() {
            if (selectedBadgeType[0].value) {
              return MissionBadges();
            }
            if (selectedBadgeType[1].value) {
              return SocialBadges();
            }
            if (selectedBadgeType[2].value) {
              return PersonalStyleBadges();
            }
          }(),
        ],
      );
    });
  }
}

class MissionBadges extends StatelessWidget {
  const MissionBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 17.43145447.w,
      runSpacing: 17.42637451.h,
      children: [
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/photographer.png',
          text: 'Photographer',
          isAchieved: true,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/curator.png',
          text: 'Curator',
          isAchieved: true,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/organizer.png',
          text: 'Organizer',
          isAchieved: true,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/trendsetter.png',
          text: 'Trendsetter',
          isAchieved: false,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/stylist.png',
          text: 'Stylist',
          isAchieved: false,
        ),
      ],
    );
  }
}

class SocialBadges extends StatelessWidget {
  const SocialBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 17.43145447.w,
      runSpacing: 17.42637451.h,
      children: [
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/color_expert.png',
          text: 'Color Expert',
          isAchieved: true,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/vintage_voya.png',
          text: 'Vintage Voya',
          isAchieved: true,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/boho_chic.png',
          text: 'Boho Chic',
          isAchieved: true,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/streetwear_savvy.png',
          text: 'Streetwear Savvy',
          isAchieved: false,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/minimalist_master.png',
          text: 'Minimalist Master',
          isAchieved: false,
        ),
        BadgeCard(
          icon:
          'assets/images/style_missions/rewards_achievements/luxury.png',
          text: 'Luxury Lover',
          isAchieved: false,
        ),
        BadgeCard(
          icon:
          'assets/images/style_missions/rewards_achievements/eco_fashionista.png',
          text: 'Eco Fashionista',
          isAchieved: false,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/bold_explorer.png',
          text: 'Bold Explorer',
          isAchieved: false,
        ),
      ],
    );
  }
}

class PersonalStyleBadges extends StatelessWidget {
  const PersonalStyleBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 17.43145447.w,
      runSpacing: 17.42637451.h,
      children: [
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/influencer.png',
          text: 'Influencer',
          isAchieved: true,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/top_commenter.png',
          text: 'Top Commenter',
          isAchieved: true,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/community_helper.png',
          text: 'Community Helper',
          isAchieved: false,
        ),
        BadgeCard(
          icon:
              'assets/images/style_missions/rewards_achievements/outfit_sharer.png',
          text: 'Outfit Sharer',
          isAchieved: false,
        ),
        BadgeCard(
          icon: 'assets/images/style_missions/rewards_achievements/friend_refferer.png',
          text: 'Friend Referrer',
          isAchieved: false,
        ),
      ],
    );
  }
}

class BadgeCard extends StatelessWidget {
  final String icon;
  final String text;
  final bool isAchieved;

  const BadgeCard({
    required this.icon,
    required this.text,
    required this.isAchieved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(27.23.w),
          decoration: BoxDecoration(
            color: isAchieved ? WTWColor.primary : Color(0xFFD1D5DB),
            borderRadius: BorderRadius.circular(17.43.r),
            border: Border.all(color: Color(0xFFE5E7EB)),
          ),
          child: Image.asset(icon, scale: 4),
        ),

        SizedBox(height: 8.719159241.h),

        SizedBox(
          width: 92.85713958740234.w,
          child: Text(
            text,
            style: TextStyle(
              color: isAchieved ? Color(0xFF2F2E2D) : Color(0xFFA7A39B),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
