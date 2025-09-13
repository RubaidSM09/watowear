import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/extras_controller.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra5View extends GetView<ExtrasController> {
  const Extra5View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return Column(
          children: [
            SizedBox(height: 32.68.h),

            ResetPasswordHeadText(
              text:
              'Do you want to stay in your comfort zone, or try new things?',
            ),

            SizedBox(height: 12.h),

            ExtrasSubheadText(
              text:
              'I can keep it safe, or we can explore\nsome fresh ideas together.',
            ),

            SizedBox(height: 24.08.h),

            GestureDetector(
              onTap: () {
                controller.selectedNewThing.value = [true.obs, false.obs, false.obs];
              },
              child: NewThingsCard(
                icon: 'assets/images/authentication/new_things/safe.png',
                text: 'Safe',
                subText: 'Stay with what you know',
                isSelected: controller.selectedNewThing[0],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedNewThing.value = [false.obs, true.obs, false.obs];
              },
              child: NewThingsCard(
                icon: 'assets/images/authentication/new_things/adventurous.png',
                text: 'A bit adventurous',
                subText: 'Mix familiar with new',
                isSelected: controller.selectedNewThing[1],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                controller.selectedNewThing.value = [false.obs, false.obs, true.obs];
              },
              child: NewThingsCard(
                icon: 'assets/images/authentication/new_things/surprise.png',
                text: 'Surprise me!',
                subText: 'I\'m ready for anything',
                isSelected: controller.selectedNewThing[2],
              ),
            ),
          ],
        );
      }),
    );
  }
}
