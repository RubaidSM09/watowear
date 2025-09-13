import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/generate/views/generate_view.dart';
import 'package:watowear_chole/app/modules/home/views/generate_outfit_view.dart';
import 'package:watowear_chole/app/modules/home/views/help_n_faq_view.dart';
import 'package:watowear_chole/app/modules/home/views/notifications_view.dart';
import 'package:watowear_chole/app/modules/home/views/outfit_details_view.dart';
import 'package:watowear_chole/app/modules/home/views/outfit_suggestions_view.dart';
import 'package:watowear_chole/app/modules/home/views/setting_view.dart';
import 'package:watowear_chole/app/modules/home/views/wardrobe_carousal_view.dart';
import 'package:watowear_chole/app/modules/profile/views/edit_profile_view.dart';
import 'package:watowear_chole/app/modules/sign_in/views/sign_in_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/privacy_policy_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        /*leading: GestureDetector(
          onTap: () => Get.to(SettingView()),
          child: Image.asset(
            'assets/images/home/menu.png',
            width: 17.5.w,
            height: 15.h,
            scale: 4,
          ),
        ),*/
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                Image.asset(
                  'assets/images/onboarding/wtw_logo2.png',
                  // color: WTWColor.text_icons,
                  width: 148.35238647460938.w,
                  height: 37.h,
                  scale: 4,
                ),
                GestureDetector(
                  onTap: () => Get.to(NotificationsView()),
                  child: Image.asset(
                    'assets/images/home/notifications.png',
                    width: 17.5.w,
                    height: 20.h,
                    scale: 4,
                  ),
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, /*top: 53.h*/),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 26.5.h,),
        
                NewToWatowear(),
        
                SizedBox(height: 29.h,),
        
                ResetPasswordHeadText(text: 'Welcome to WATOWEAR!'),
        
                SizedBox(height: 12.h,),
        
                Text(
                  'Let’s get you started with your personalized style journey',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
        
                SizedBox(height: 29.h,),
        
                Row(
                  children: [
                    Text(
                      'Quick Actions',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        
                SizedBox(height: 9.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuickActionButton(text: 'Add items', logo: 'assets/images/home/add_item.png', onTap: () {  }),
        
                    QuickActionButton(
                      text: 'Generate Outfit',
                      logo: 'assets/images/home/generate_outfit.png',
                      logoColor: WTWColor.accent,
                      onTap: () => Get.dialog(GenerateOutfitView()),
                    ),
                  ],
                ),
        
                SizedBox(height: 21.h,),
        
                WTWPrimaryButton(text: 'Add Items to Your Closet', icon: 'assets/images/home/add_items_to_closet.png', onTap: () => Get.to(GenerateView())),
        
                SizedBox(height: 21.h,),
        
                StyleProfileCard(styles: ['Chic','Worm Tones','Summer'],),
        
                SizedBox(height: 21.h,),
        
                DailyMissionsCard(totalUploads: 1,),
        
                SizedBox(height: 21.h,),
        
                OnboardingButton2(text: 'View All', onTap: () {  }),
        
                SizedBox(height: 21.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Outfits',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(OutfitSuggestionsView()),
                      child: Text(
                        'Take Suggestions?',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 18.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(OutfitDetailsView()),
                      child: RecentOutfitsCard(
                        image: 'assets/images/home/casual_friday.png',
                        title: 'Casual Friday',
                      ),
                    ),
                    RecentOutfitsCard(
                      image: 'assets/images/home/weekend_vibes.png',
                      title: 'Weekend Vibes',
                    ),
                  ],
                ),
        
                SizedBox(height: 39.h,),
        
                WTWPrimaryButton(text: 'Take App Tour', onTap: () {  }),
        
                SizedBox(height: 29.17041016.h,),
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
