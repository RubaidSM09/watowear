import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';
import 'package:watowear_chole/common/widget/custom_widgets.dart';
import 'package:watowear_chole/common/widget/profile/quick_actions_section.dart';
import 'package:watowear_chole/common/widget/profile/this_month_style_section.dart';
import 'package:watowear_chole/common/widget/profile/your_top_outfit_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
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
                WTWAppbarText(text: 'Profile'),
                GestureDetector(
                  onTap: () {  },
                  child: Image.asset(
                    'assets/images/profile/edit.png',
                    width: 17.98.w,
                    height: 17.98.h,
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

              SizedBox(height: 24.4.h,),

              ProfileUpperSection(),

              SizedBox(height: 20.h,),

              ProfileEarnNewBadgeSection(),

              SizedBox(height: 20.h,),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileStatCard(
                        title: 'Items',
                        count: 142,
                        description: 'Scanned & cataloged',
                        color: Color(0xFFDBEAFE),
                        icon: 'assets/images/profile/items.png',
                        isButtonAvailable: true,
                      ),
                      ProfileStatCard(
                        title: 'Outfits',
                        count: 89,
                        description: 'Saved combinations',
                        color: Color(0xFFF3E8FF),
                        icon: 'assets/images/profile/outfits.png',
                      ),
                    ],
                  ),

                  SizedBox(height: 18.24.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileStatCard(
                        title: 'Missions',
                        count: 23,
                        description: 'Completed challenges',
                        color: Color(0xFFDCFCE7),
                        icon: 'assets/images/profile/missions.png',
                      ),
                      ProfileStatCard(
                        title: 'Style Score',
                        count: 8.7,
                        description: 'Tap to see breakdown',
                        color: Color(0xFFFFEDD5),
                        icon: 'assets/images/profile/style_score.png',
                        isInfoAvailable: true,
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(height: 20.h,),

              YourTopOutfitSection(),

              SizedBox(height: 20.h,),

              ThisMonthStyleSection(),

              SizedBox(height: 20.h,),

              QuickActionsSection(),

              SizedBox(height: 30.h,),

              WTWPrimaryButton(
                text: 'Style New Outfit',
                icon: 'assets/images/profile/add.png',
                width: 360.w,
                onTap: () {  },
              ),

              SizedBox(height: 30.61.h,),
            ],
          ),
        ),
      ),
    );
  }
}
