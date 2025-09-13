import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/home/views/legal_mentions_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/privacy_policy_view.dart';
import 'package:watowear_chole/app/modules/sign_up/views/terms_condition_view.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/setting_controller.dart';

class LegalPrivacyView extends GetView<SettingController> {

  const LegalPrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Legal Privacy'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 24.4.h,),

              PrivacyControlSection(
                switchedStates: [
                  controller.isDataProcessingConsentActive.value,
                  controller.isMarketingCommunicationsActive.value,
                  controller.isAnalyticsPerformanceActive.value,
                ],
              ),

              SizedBox(height: 24.4.h,),

              LegalPrivacyMiddleSection(),

              SizedBox(height: 21.8.h,),

              YourPrivacySettingsSection(),

              SizedBox(height: 25.h,),
            ],
          ),
        ),
      ),
    );
  }
}

class PrivacyControlSection extends StatelessWidget {
  final List<bool> switchedStates;
  final List<RxBool> isSwitchedOn;

  PrivacyControlSection({
    required this.switchedStates,
    super.key
  }) : isSwitchedOn = [switchedStates[0].obs, switchedStates[1].obs, switchedStates[2].obs,];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Privacy Settings',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 20.53.sp,
          ),
        ),

        SizedBox(height: 9.h,),

        Text(
          'Control how your data is used.',
          style: TextStyle(
            color: Color(0xFF4B5563),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 15.96.sp,
          ),
        ),

        SizedBox(height: 18.h,),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9.12.r),
            border: Border.all(color: Color(0xFFE5E7EB)),
          ),
          child: Column(
            children: [
              PrivacyControlSectionRow(
                title: 'Data Processing Consent',
                subtitle: 'Allow processing of personal data for app functionality',
                switchedState: isSwitchedOn[0].value,
              ),

              Divider(color: Color(0xFFE5E7EB), thickness: 1.14.h,),

              PrivacyControlSectionRow(
                title: 'Marketing Communications',
                subtitle: 'Receive promotional emails and notifications',
                switchedState: isSwitchedOn[1].value,
              ),

              Divider(color: Color(0xFFE5E7EB), thickness: 1.14.r,),

              PrivacyControlSectionRow(
                title: 'Analytics & Performance',
                subtitle: 'Help improve app performance through usage data',
                switchedState: isSwitchedOn[2].value,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrivacyControlSectionRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool switchedState;
  final RxBool isSwitchedOn;

  PrivacyControlSectionRow({
    required this.title,
    required this.subtitle,
    required this.switchedState,
    super.key
  }) : isSwitchedOn = switchedState.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.96.w, vertical: 20.86.h,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 291.0628662109375.w,
                child: Column(
                  spacing: 4.h,
                  children: [
                    Row(
                      spacing: 8.8.w,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: WTWColor.text_icons,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.66.sp,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.11.r),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F4F6),
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFE5E7EB)),
                          ),
                          child: Image.asset(
                            'assets/images/home/legal_privacy/privacy_info.png',
                            scale: 4,
                          ),
                        )
                      ],
                    ),

                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.56.sp,
                      ),
                    )
                  ],
                ),
              ),

              Obx(() {
                return GestureDetector(
                  onTap: () {
                    isSwitchedOn.value = !isSwitchedOn.value;
                  },
                  child: Container(
                    padding: isSwitchedOn.value
                        ? EdgeInsets.only(
                        left: 25.09.w, right: 2.28.w, top: 2.28.h, bottom: 2.28.h)
                        : EdgeInsets.only(
                        left: 2.28.w, right: 25.09.w, top: 2.28.h, bottom: 2.28.h),
                    decoration: BoxDecoration(
                      color: isSwitchedOn.value ? WTWColor.primary : WTWColor
                          .secondary_bg,
                      borderRadius: BorderRadius.circular(13.68.r),
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                    child: Container(
                      width: 22.807018280029297.w,
                      height: 22.807018280029297.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        )
      ],
    );
  }
}

class LegalPrivacyMiddleSection extends StatelessWidget {
  const LegalPrivacyMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14.h,
      children: [
        LegalPrivacyMiddleSectionCard(
          icon: 'assets/images/home/legal_privacy/terms_condition.png',
          iconColor: Color(0xFFDCFCE7),
          title: 'Terms & Conditions',
          subtitle: 'Service usage agreement',
          onTap: () => Get.to(TermsConditionView()),
        ),

        LegalPrivacyMiddleSectionCard(
          icon: 'assets/images/home/legal_privacy/privacy_policy.png',
          iconColor: Color(0xFFF3E8FF),
          title: 'Privacy Policy',
          subtitle: 'How we handle your data',
          onTap: () => Get.to(PrivacyPolicyView()),
        ),

        LegalPrivacyMiddleSectionCard(
          icon: 'assets/images/home/legal_privacy/legal_mentions.png',
          iconColor: Color(0xFFFFEDD5),
          title: 'Legal Mentions',
          subtitle: 'Company information & disclaimers',
          onTap: () => Get.to(LegalMentionsView()),
        ),
      ],
    );
  }
}

class LegalPrivacyMiddleSectionCard extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final void Function()? onTap;

  const LegalPrivacyMiddleSectionCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 27.37.w, vertical: 18.25.h,),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.12.r),
          border: Border.all(color: Color(0xFFE5E7EB)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 13.5.w,
              children: [
                Container(
                  padding: EdgeInsets.all(12.26.r),
                  decoration: BoxDecoration(
                    color: iconColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFE5E7EB),),
                  ),
                  child: Image.asset(
                    icon,
                    scale: 4,
                  ),
                ),

                SizedBox(
                  width: 245.1028137207031.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            Icon(
              Icons.keyboard_arrow_down,
              size: 25.r,
              color: Color(0xFF9CA3AF),
            ),
          ],
        ),
      ),
    );
  }
}

class YourPrivacySettingsSection extends StatelessWidget {
  const YourPrivacySettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Privacy Settings',
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 20.53.sp,
          ),
        ),

        SizedBox(height: 18.25.h,),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9.12.r),
            border: Border.all(color: Color(0xFFE5E7EB)),
          ),
          child: Column(
            children: [
              YourPrivacySettingsRow(
                icon: 'assets/images/home/legal_privacy/download.png',
                title: 'Download My Data',
                subtitle: 'Export all your personal information',
              ),

              Divider(color: Color(0xFFE5E7EB), thickness: 1.14.h,),

              YourPrivacySettingsRow(
                icon: 'assets/images/home/legal_privacy/correct.png',
                title: 'Correct My Data',
                subtitle: 'Update incorrect information',
              ),

              Divider(color: Color(0xFFE5E7EB), thickness: 1.14.h,),

              YourPrivacySettingsRow(
                icon: 'assets/images/home/legal_privacy/delete.png',
                title: 'Delete My Account',
                subtitle: 'Permanently remove all data',
                titleColor: Color(0xFFEF4444),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class YourPrivacySettingsRow extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color titleColor;

  const YourPrivacySettingsRow({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.titleColor = WTWColor.text_icons,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.96.w, vertical: 20.86.h,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 13.75.w,
            children: [
              Image.asset(
                icon,
                scale: 4,
              ),

              SizedBox(
                width: 291.0628662109375.w,
                child: Column(
                  spacing: 4.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 8.8.w,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: titleColor,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.96.sp,
                          ),
                        ),
                      ],
                    ),

                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.68.sp,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Icon(
            Icons.keyboard_arrow_right,
            size: 25.r,
            color: Color(0xFF9CA3AF),
          ),
        ],
      ),
    );
  }
}
