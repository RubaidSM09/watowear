import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_badges_section.dart';
import 'package:watowear_chole/common/widget/missions/rewards_achievement/rewards/rewards_points_section.dart';

import '../../../../custom_colors.dart';

class PointVsBadgeSelectionSection extends StatelessWidget {
  final bool isBadgeSelected;

  const PointVsBadgeSelectionSection({
    required this.isBadgeSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    RxBool isBadge = isBadgeSelected.obs;

    return Obx(() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(4.56.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.68.r),
              color: WTWColor.secondary_bg,
              border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if(isBadge.value){
                      isBadge.value = !isBadge.value;
                    }
                  },
                  child: Container(
                    width: 186.4385986328125.w,
                    padding: EdgeInsets.symmetric(vertical: 16.1.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.12.r),
                      color: isBadge.value ? Colors.transparent : Colors.white,
                      border: Border.all(color: isBadge.value ? Colors.transparent : Color(0xFFE5E7EB)),
                      boxShadow: [
                        BoxShadow(
                          color: isBadge.value ? Colors.black.withAlpha(0) : Colors.black.withAlpha(26),
                          blurRadius: 4.56.r,
                          offset: Offset(0.w, 2.28.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Points',
                        style: TextStyle(
                          color: isBadge.value ? WTWColor.text_icons : WTWColor.primary,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if(!isBadge.value){
                      isBadge.value = !isBadge.value;
                    }
                  },
                  child: Container(
                    width: 186.4385986328125.w,
                    padding: EdgeInsets.symmetric(vertical: 16.1.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.12.r),
                      color: isBadge.value ? Colors.white : Colors.transparent,
                      border: Border.all(color: isBadge.value ? Color(0xFFE5E7EB) : Colors.transparent),
                      boxShadow: [
                        BoxShadow(
                          color: isBadge.value ? Colors.black.withAlpha(26) : Colors.black.withAlpha(0),
                          blurRadius: 4.56.r,
                          offset: Offset(0.w, 2.28.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Badges',
                        style: TextStyle(
                          color: isBadge.value ? WTWColor.primary : WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 20.h,),

          isBadge.value ? RewardsBadgesSection() : RewardsPointsSection(),
        ],
      );
    });
  }
}
