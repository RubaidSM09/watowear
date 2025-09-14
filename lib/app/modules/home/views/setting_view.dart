import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/home/views/wardrobe_carousal_view.dart';
import 'package:watowear_chole/common/widget/home/settings/all_settings_list.dart';
import 'package:watowear_chole/common/widget/home/settings/bottom_section.dart';
import 'package:watowear_chole/common/widget/home/settings/search_bar.dart';
import 'package:watowear_chole/common/widget/home/settings/upper_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_text.dart';
import '../../profile/views/edit_profile_view.dart';
import '../../profile/views/profile_view.dart';
import '../../sign_in/views/sign_in_view.dart';
import '../../sign_up/views/privacy_policy_view.dart';
import '../controllers/setting_controller.dart';
import 'help_n_faq_view.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Settings'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),

                SizedBox(height: 24.4.h,),

                WTWSearchBar(),

                SizedBox(height: 20.h,),

                SettingsUpperSection(),

                SizedBox(height: 20.h,),

                AllSettingsList(
                  isNotificationActive: controller.isNotificationActive,
                  isDarkMode: controller.isDarkMode,

                  isDataProcessingConsentActive: controller.isDataProcessingConsentActive,
                ),

                SizedBox(height: 20.h,),

                SettingsBottomSection(),
              ],
            ),
          ),
        ),
      ),

      drawer: SafeArea(
        child: Container(
          width: 328.w,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 34.h),
          color: Color(0xFF6A6D57),
          child: Column(
            spacing: 16.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16.w,
                children: [
                  CircleAvatar(
                    radius: 32.r,
                    backgroundImage: AssetImage(
                      'assets/images/home/settings/profile_pic.jpg',
                    ),
                  ),

                  Column(
                    spacing: 10.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emma Johnson',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 22.81.sp,
                        ),
                      ),

                      Text(
                        'user123@gmail.com',
                        style: TextStyle(
                          color: Color(0xFFE5E7EB),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              WTWPrimaryButton(
                text: 'Edit Profile',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 12,
                onTap: () => Get.to(EditProfileView()),
              ),

              WTWPrimaryButton(
                text: 'Profile',
                icon: 'assets/images/drawer/profile.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.to(ProfileView()),
              ),

              WTWPrimaryButton(
                text: 'Wardrobe',
                icon: 'assets/images/drawer/wardrobe.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.to(WardrobeCarousalView()),
              ),

              WTWPrimaryButton(
                text: 'Settings',
                icon: 'assets/images/drawer/settings.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.to(SettingView()),
              ),

              WTWPrimaryButton(
                text: 'Help/Support',
                icon: 'assets/images/drawer/help_support.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.to(HelpNFaqView()),
              ),

              WTWPrimaryButton(
                text: 'Policies',
                icon: 'assets/images/drawer/policies.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.to(PrivacyPolicyView()),
              ),

              WTWPrimaryButton(
                text: 'Share with friend',
                icon: 'assets/images/drawer/share_with_friend.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () {  },
              ),

              WTWPrimaryButton(
                text: 'Logout',
                icon: 'assets/images/drawer/logout.png',
                color: Colors.transparent,
                borderColor: Color(0xFFDADADA),
                paddingLeftWidth: 12,
                paddingTopHeight: 8,
                paddingBottomHeight: 8,
                paddingRightWidth: 0,
                textAlignment: MainAxisAlignment.start,
                onTap: () => Get.off(SignInView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
