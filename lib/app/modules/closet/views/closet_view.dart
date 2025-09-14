import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/generate/views/generate_view.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';
import 'package:watowear_chole/common/widget/custom_widgets.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_text.dart';
import '../../home/views/help_n_faq_view.dart';
import '../../home/views/setting_view.dart';
import '../../home/views/wardrobe_carousal_view.dart';
import '../../profile/views/edit_profile_view.dart';
import '../../profile/views/profile_view.dart';
import '../../sign_in/views/sign_in_view.dart';
import '../../sign_up/views/privacy_policy_view.dart';
import '../controllers/closet_controller.dart';

class ClosetView extends GetView<ClosetController> {
  const ClosetView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ClosetController());

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
                WTWAppbarText(text: 'My Closet'),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/closet/search_closet.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                    SizedBox(width: 16.w,),
                    Image.asset(
                      'assets/images/home/filter.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                  ],
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
            padding: EdgeInsets.only(left: 25.w, right: 25.w, /*top: 53.h*/),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 18.01.h,),
        
                MyClosetUpperSection(isGrid: controller.isGrid,),
        
                SizedBox(height: 18.01.h,),
        
                Divider(color: Color(0xFFE5E7EB),),
        
                SizedBox(height: 18.63.h,),
        
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(() {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.selectedFitler.value = [
                              true.obs,
                              false.obs,
                              false.obs,
                              false.obs,
                              false.obs
                            ];
                          },
                          child: FilterCard(text: 'All',
                            isSelected: controller.selectedFitler[0],),
                        ),
                        SizedBox(width: 8.799.w,),
                        GestureDetector(
                          onTap: () {
                            controller.selectedFitler.value = [
                              false.obs,
                              true.obs,
                              false.obs,
                              false.obs,
                              false.obs,
                            ];
                          },
                          child: FilterCard(text: 'Tops',
                            isSelected: controller.selectedFitler[1],),
                        ),
                        SizedBox(width: 8.799.w,),
                        GestureDetector(
                            onTap: () {
                              controller.selectedFitler.value = [
                                false.obs,
                                false.obs,
                                true.obs,
                                false.obs,
                                false.obs
                              ];
                            },
                            child: FilterCard(text: 'Bottoms',
                              isSelected: controller.selectedFitler[2],)
                        ),
                        SizedBox(width: 8.799.w,),
                        GestureDetector(
                            onTap: () {
                              controller.selectedFitler.value = [
                                false.obs,
                                false.obs,
                                false.obs,
                                true.obs,
                                false.obs
                              ];
                            },
                            child: FilterCard(text: 'Dresses',
                              isSelected: controller.selectedFitler[3],)
                        ),
                        SizedBox(width: 8.799.w,),
                        GestureDetector(
                            onTap: () {
                              controller.selectedFitler.value = [
                                false.obs,
                                false.obs,
                                false.obs,
                                false.obs,
                                true.obs
                              ];
                            }, child: FilterCard(text: 'Shoes',
                          isSelected: controller.selectedFitler[4],)
                        ),
                      ],
                    );
                  }),
                ),
        
                SizedBox(height: 25.8075.h,),
        
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutfitCardsWitRating(
                          image: 'assets/images/home/outfit_suggestions/board_meeting.png',
                          title: 'Board Meeting',
                          description: 'Professional and polished',
                          rating: 4.9,
                          itemCount: 4,
                        ),
                        OutfitCardsWitRating(
                          image: 'assets/images/home/outfit_suggestions/street_style.png',
                          title: 'Street Style',
                          description: 'Urban and trendy',
                          rating: 4.7,
                          itemCount: 5,
                        ),
                      ],
                    ),
        
                    SizedBox(height: 17.73.h,),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutfitCardsWitRating(
                          image: 'assets/images/home/outfit_suggestions/cozy_winter.png',
                          title: 'Cozy Winter',
                          description: 'Warm and comfortable',
                          rating: 4.9,
                          itemCount: 4,
                        ),
                        OutfitCardsWitRating(
                          image: 'assets/images/home/outfit_suggestions/night_out.png',
                          title: 'Night Out',
                          description: 'Perfect for dinner dates',
                          rating: 4.7,
                          itemCount: 5,
                        ),
                      ],
                    ),
        
                    SizedBox(height: 25.h,),
                  ],
                )
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
        onTap: () => Get.to(GenerateView()),
        child: Container(
          padding: EdgeInsets.all(21.5.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.primary
          ),
          child: Image.asset(
            'assets/images/home/item_details/add.png',
            color: Colors.white,
            scale: 4,
          ),
        ),
      ),
    );
  }
}
