import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';

import '../../../../common/widget/custom_text.dart';
import '../controllers/extras_controller.dart';

class Extra2View extends GetView<ExtrasController> {

  const Extra2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 32.68.h,
            left: 42.5.w,
            child: SingleChildScrollView(
              child: Obx(() {
                return Column(
                  children: [
                    ResetPasswordHeadText(
                        text: 'How would you describe your body shape?'),

                    SizedBox(height: 12.h,),

                    ExtrasSubheadText(
                      text: 'I want to suggest cuts and fits\nthat truly flatter you.',),

                    SizedBox(height: 24.08.h,),

                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [true.obs, false.obs, false.obs, false.obs, false.obs, false.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/apple_body.png',
                        text: 'Apple',
                        isSelected: controller.selectedBodyShape[0],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [false.obs, true.obs, false.obs, false.obs, false.obs, false.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/pear_body.png',
                        text: 'Pear',
                        isSelected: controller.selectedBodyShape[1],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [false.obs, false.obs, true.obs, false.obs, false.obs, false.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/hourglass_body.png',
                        text: 'Hourglass',
                        isSelected: controller.selectedBodyShape[2],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [false.obs, false.obs, false.obs, true.obs, false.obs, false.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/rectangle_body.png',
                        text: 'Rectangle',
                        isSelected: controller.selectedBodyShape[3],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [false.obs, false.obs, false.obs, false.obs, true.obs, false.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/inverted_triangle_body.png',
                        text: 'Inverted Triangle',
                        isSelected: controller.selectedBodyShape[4],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    GestureDetector(
                      onTap: () {
                        controller.selectedBodyShape.value = [false.obs, false.obs, false.obs, false.obs, false.obs, true.obs];
                      },
                      child: BodyShapeCard(
                        icon: 'assets/images/authentication/body_shape/not_sure_body.png',
                        text: 'I\'m not sure',
                        isSelected: controller.selectedBodyShape[5],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ]
    );
  }
}
