import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/extras_controller.dart';

class Extra3View extends GetView<ExtrasController> {
  const Extra3View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return Column(
          children: [
            SizedBox(height: 32.68.h),

            ResetPasswordHeadText(text: 'Tell me about your\nskin tone.'),

            SizedBox(height: 12.h),

            ExtrasSubheadText(
              text: 'It helps me suggest colors that\nwill really suit you.',
            ),

            SizedBox(height: 24.08.h),

            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.fair,
                borderColor: WTWColor.fair_border,
                text: 'Fair',
                isSelected: controller.selectedSkinTone[0],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.light,
                borderColor: WTWColor.light_border,
                text: 'Light',
                isSelected: controller.selectedSkinTone[1],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.medium,
                borderColor: WTWColor.medium_border,
                text: 'Medium',
                isSelected: controller.selectedSkinTone[2],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.olive,
                borderColor: WTWColor.olive_border,
                text: 'Olive',
                isSelected: controller.selectedSkinTone[3],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.tan,
                borderColor: WTWColor.tan_border,
                text: 'Tan',
                isSelected: controller.selectedSkinTone[4],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.deep,
                borderColor: WTWColor.deep_border,
                text: 'Deep',
                isSelected: controller.selectedSkinTone[5],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: SkinToneCard(
                color: WTWColor.dark,
                borderColor: WTWColor.dark_border,
                text: 'Dark',
                isSelected: controller.selectedSkinTone[6],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedSkinTone.value = [
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
              child: BodyShapeCard(
                icon: 'assets/images/authentication/body_shape/not_sure_body.png',
                text: 'I\'m not sure',
                isSelected: controller.selectedSkinTone[7],
              ),
            ),
            SizedBox(height: 175.h),
          ],
        );
      }),
    );
  }
}
