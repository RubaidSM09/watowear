import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class Extra2View extends GetView {
  const Extra2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 132.68.h,
            left: 42.5.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ResetPasswordHeadText(text: 'How would you describe your body shape?'),
              
                  SizedBox(height: 12.h,),
              
                  ExtrasSubheadText(text: 'I want to suggest cuts and fits\nthat truly flatter you.',),
              
                  SizedBox(height: 24.08.h,),
              
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/apple_body.png', text: 'Apple',),
                  SizedBox(height: 16.h,),
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/pear_body.png', text: 'Pear',),
                  SizedBox(height: 16.h,),
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/hourglass_body.png', text: 'Hourglass',),
                  SizedBox(height: 16.h,),
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/rectangle_body.png', text: 'Rectangle',),
                  SizedBox(height: 16.h,),
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/inverted_triangle_body.png', text: 'Inverted Triangle',),
                  SizedBox(height: 16.h,),
                  BodyShapeCard(icon: 'assets/images/authentication/body_shape/not_sure_body.png', text: 'I\'m not sure',),
                ],
              ),
            ),
          ),
        ]
    );
  }
}
