import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/extras_controller.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra7View extends GetView<ExtrasController> {
  const Extra7View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return Column(
          children: [
            SizedBox(height: 32.68.h,),

            ResetPasswordHeadText(text: 'Anyone whose style\nyou love?'),

            SizedBox(height: 12.h,),

            ExtrasSubheadText(text: 'I’ll keep them in mind.',),

            SizedBox(height: 24.08.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [true.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/zendaya.png',
                    text: 'Zendaya',
                    isSelected: controller.selectedStyle[0],
                  ),
                ),
                SizedBox(width: 16.66.w,),
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, true.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/timothée_chalamet.png',
                    text: 'Timothée Chalamet',
                    isSelected: controller.selectedStyle[1],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, true.obs, false.obs, false.obs, false.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/emma_stone.png',
                    text: 'Emma Stone',
                    isSelected: controller.selectedStyle[2],
                  ),
                ),
                SizedBox(width: 16.66.w,),
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, false.obs, true.obs, false.obs, false.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/ryan_gosling.png',
                    text: 'Ryan Gosling',
                    isSelected: controller.selectedStyle[3],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, false.obs, false.obs, true.obs, false.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/margot_robbie.png',
                    text: 'Margot Robbie',
                    isSelected: controller.selectedStyle[4],
                  ),
                ),
                SizedBox(width: 16.66.w,),
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, false.obs, false.obs, false.obs, true.obs, false.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/michael_jordan.png',
                    text: 'Michael B. Jordan',
                    isSelected: controller.selectedStyle[5],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, true.obs, false.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/anya_taylor_joy.png',
                    text: 'Anya Taylor-Joy',
                    isSelected: controller.selectedStyle[6],
                  ),
                ),
                SizedBox(width: 16.66.w,),
                GestureDetector(
                  onTap: () {
                    controller.selectedStyle.value = [false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, false.obs, true.obs,];
                  },
                  child: CelebrityCard(
                    image: 'assets/images/authentication/celebrity/dev_patel.png',
                    text: 'Dev Patel',
                    isSelected: controller.selectedStyle[7],
                  ),
                ),
              ],
            ),

            SizedBox(height: 25.00108398.h,),

            Padding(
              padding: EdgeInsets.only(left: 42.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StyleInspirationText(),
                ],
              ),
            ),

            SizedBox(height: 175.h,),
          ],
        );
      }),
    );
  }
}
