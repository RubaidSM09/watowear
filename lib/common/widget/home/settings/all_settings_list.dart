import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/home/views/contact_support_view.dart';
import 'package:watowear_chole/app/modules/home/views/help_n_faq_view.dart';
import 'package:watowear_chole/app/modules/home/views/legal_privacy_view.dart';
import 'package:watowear_chole/app/modules/home/views/saved_outfits_view.dart';
import 'package:watowear_chole/app/modules/home/views/voice_assistant_view.dart';
import 'package:watowear_chole/app/modules/profile/views/edit_profile_view.dart';

import '../../../custom_colors.dart';

class AllSettingsList extends StatelessWidget {
  final RxBool isNotificationActive;
  final RxBool isDarkMode;

  final RxBool isDataProcessingConsentActive;
  final RxBool isAdvancedSettingsSelected;

  const AllSettingsList({
    required this.isNotificationActive,
    required this.isDarkMode,

    required this.isDataProcessingConsentActive,
    required this.isAdvancedSettingsSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.12.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(SavedOutfitsView()),
            child: SettingsRow(
              icon: 'assets/images/home/settings/saved_outfits.png',
              title: 'Saved Outfits',
            ),
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          GestureDetector(
            onTap: () => Get.to(VoiceAssistantView()),
            child: SettingsRow(
              icon: 'assets/images/home/settings/voice_assistant.png',
              title: 'Voice Assistant',
            ),
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          SettingsRow(
            icon: 'assets/images/home/settings/notifications.png',
            title: 'Notifications',
            isSwitchable: true,
            switchState: isNotificationActive.value,
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          SettingsRow(
            icon: 'assets/images/home/settings/dark_mode.png',
            title: 'Dark Mode',
            isSwitchable: true,
            switchState: isDarkMode.value,
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          GestureDetector(
            onTap: () => Get.to(EditProfileView()),
            child: SettingsRow(
              icon: 'assets/images/home/settings/edit_profile.png',
              title: 'Edit Profile',
            ),
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          SettingsRow(
            icon: 'assets/images/home/settings/account_safety.png',
            title: 'Account & Security',
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          SettingsRow(
            icon: 'assets/images/home/settings/language_region.png',
            title: 'Language & Region',
            isLanguage: true,
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          GestureDetector(
            onTap: () => Get.to(HelpNFaqView()),
            child: SettingsRow(
              icon: 'assets/images/home/settings/help_center.png',
              title: 'Help Center',
            ),
          ),

          Divider(color: Color(0xFFF3F4F6), thickness: 1.14.h),

          Obx(() {
            return Column(
              spacing: 18.25.h,
              children: [
                GestureDetector(
                  onTap: () {
                    isAdvancedSettingsSelected.value =
                        !isAdvancedSettingsSelected.value;
                  },
                  child: Padding(
                    padding: EdgeInsets.all(18.25.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/home/settings/advanced_settings.png',
                                  scale: 4,
                                ),

                                SizedBox(width: 16.w),

                                Text(
                                  'Advanced Settings',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              !isAdvancedSettingsSelected.value
                                  ? Icons.arrow_forward_ios
                                  : Icons.keyboard_arrow_down_outlined,
                              size: !isAdvancedSettingsSelected.value
                                  ? 15.964912414550781.sp
                                  : 30.sp,
                              color: Color(0xFF9CA3AF),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                isAdvancedSettingsSelected.value
                    ? Column(
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(LegalPrivacyView()),
                      child: Padding(
                        padding: EdgeInsets.only(left: 18.25.w, right: 18.25.w, bottom: 18.25.w),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 40.w),

                                Text(
                                  'Legal Privacy',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.964912414550781.sp,
                              color: Color(0xFF9CA3AF),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () => Get.to(ContactSupportView()),
                      child: Padding(
                        padding: EdgeInsets.only(left: 18.25.w, right: 18.25.w, bottom: 18.25.w),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 40.w),

                                Text(
                                  'Contact Support',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.964912414550781.sp,
                              color: Color(0xFF9CA3AF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
                    : SizedBox.shrink(),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class SettingsRow extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSwitchable;
  final bool switchState;
  final bool isLanguage;
  final RxBool isSwitchedOn;

  SettingsRow({
    required this.icon,
    required this.title,
    this.isSwitchable = false,
    this.switchState = true,
    this.isLanguage = false,
    super.key,
  }) : isSwitchedOn = switchState.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(icon, scale: 4),

              SizedBox(width: 16.w),

              Text(
                title,
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.25.sp,
                ),
              ),
            ],
          ),

          !isSwitchable
              ? Row(
                  children: [
                    isLanguage
                        ? Text(
                            'English',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.96.sp,
                            ),
                          )
                        : SizedBox.shrink(),
                    isLanguage ? SizedBox(width: 8.75.w) : SizedBox.shrink(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.964912414550781.sp,
                      color: Color(0xFF9CA3AF),
                    ),
                  ],
                )
              : Obx(() {
                  return GestureDetector(
                    onTap: () {
                      isSwitchedOn.value = !isSwitchedOn.value;
                    },
                    child: Container(
                      padding: isSwitchedOn.value
                          ? EdgeInsets.only(
                              left: 25.09.w,
                              right: 2.28.w,
                              top: 2.28.h,
                              bottom: 2.28.h,
                            )
                          : EdgeInsets.only(
                              left: 2.28.w,
                              right: 25.09.w,
                              top: 2.28.h,
                              bottom: 2.28.h,
                            ),
                      decoration: BoxDecoration(
                        color: isSwitchedOn.value
                            ? WTWColor.primary
                            : WTWColor.secondary_bg,
                        borderRadius: BorderRadius.circular(13.68.r),
                        border: Border.all(color: Color(0xFFE5E7EB)),
                      ),
                      child: Container(
                        width: 22.807018280029297.w,
                        height: 22.807018280029297.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                }),
        ],
      ),
    );
  }
}
