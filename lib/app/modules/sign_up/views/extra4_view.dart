import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/extras_controller.dart';

class Extra4View extends GetView<ExtrasController> {
  const Extra4View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return Column(
          children: [
            SizedBox(height: 32.68.h),

            ResetPasswordHeadText(text: 'What’ your Vibe?'),

            SizedBox(height: 12.h),

            ExtrasSubheadText(
              text: 'Choose  the styles you feel most\nat home in.',
            ),

            SizedBox(height: 24.08.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      true.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/casual.png',
                    text: 'Casual',
                    isSelected: controller.selectedVibe[0],
                  ),
                ),
                SizedBox(width: 16.66.w),
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      true.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/chic.png',
                    text: 'Chic',
                    isSelected: controller.selectedVibe[1],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      true.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/sporty.png',
                    text: 'Sporty',
                    isSelected: controller.selectedVibe[2],
                  ),
                ),
                SizedBox(width: 16.66.w),
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      false.obs,
                      true.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/minimal.png',
                    text: 'Minimal',
                    isSelected: controller.selectedVibe[3],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      true.obs,
                      false.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/romantic.png',
                    text: 'Romantic',
                    isSelected: controller.selectedVibe[4],
                  ),
                ),
                SizedBox(width: 16.66.w),
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      true.obs,
                      false.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/edgy.png',
                    text: 'Edgy',
                    isSelected: controller.selectedVibe[5],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      true.obs,
                      false.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/romantic.png',
                    text: 'Romantic',
                    isSelected: controller.selectedVibe[6],
                  ),
                ),
                SizedBox(width: 16.66.w),
                GestureDetector(
                  onTap: () {
                    controller.selectedVibe.value = [
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      false.obs,
                      true.obs
                    ];
                  },
                  child: VibeCard(
                    icon: 'assets/images/authentication/vibe/edgy.png',
                    text: 'Edgy',
                    isSelected: controller.selectedVibe[7],
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
