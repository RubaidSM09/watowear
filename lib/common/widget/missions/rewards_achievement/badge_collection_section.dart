import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class BadgeCollectionSection extends StatelessWidget {
  const BadgeCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                  bottom: BorderSide(color: Color(0xFFEAE8E3), width: 1.09.sp),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 124.18994140625.w,
                  height: 37.03910446166992.h,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: WTWColor.primary,
                        width: 2.18.sp,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Missions',
                      style: TextStyle(
                        color: WTWColor.primary,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 124.18994140625.w,
                  height: 37.03910446166992.h,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.transparent,
                        width: 2.18.sp,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Social',
                      style: TextStyle(
                        color: Color(0xFFA7A39B),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 124.18994140625.w,
                  height: 37.03910446166992.h,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.transparent,
                        width: 2.18.sp,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Personal Style',
                      style: TextStyle(
                        color: Color(0xFFA7A39B),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 26.h,),

        Wrap(
          spacing: 17.43145447.w,
          runSpacing: 17.42637451.h,
          children: [
            BadgeCard(
              icon: 'assets/images/style_missions/rewards_achievements/photographer.png',
              text: 'Photographer',
              isAchieved: true,
            ),
            BadgeCard(
              icon: 'assets/images/style_missions/rewards_achievements/curator.png',
              text: 'Curator',
              isAchieved: true,
            ),
            BadgeCard(
              icon: 'assets/images/style_missions/rewards_achievements/organizer.png',
              text: 'Organizer',
              isAchieved: true,
            ),
            BadgeCard(
              icon: 'assets/images/style_missions/rewards_achievements/trendsetter.png',
              text: 'Trendsetter',
              isAchieved: false,
            ),
            BadgeCard(
              icon: 'assets/images/style_missions/rewards_achievements/stylist.png',
              text: 'Stylist',
              isAchieved: false,
            ),
          ],
        )
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
    super.key
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
              border: Border.all(color: Color(0xFFE5E7EB))
          ),
          child: Image.asset(
            icon,
            scale: 4,
          ),
        ),

        SizedBox(height: 8.719159241.h,),

        Text(
          text,
          style: TextStyle(
            color: isAchieved ? Color(0xFF2F2E2D) : Color(0xFFA7A39B),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
          ),
        )
      ],
    );
  }
}
