import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra3View extends GetView {
  const Extra3View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 132.68.h,),

          ResetPasswordHeadText(text: 'Tell me about your\nskin tone.'),

          SizedBox(height: 12.h,),

          ExtrasSubheadText(text: 'It helps me suggest colors that\nwill really suit you.',),

          SizedBox(height: 24.08.h,),

          SkinToneCard(color: WTWColor.fair, borderColor: WTWColor.fair_border, text: 'Fair',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.light, borderColor: WTWColor.light_border, text: 'Light',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.medium, borderColor: WTWColor.medium_border, text: 'Medium',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.olive, borderColor: WTWColor.olive_border, text: 'Olive',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.tan, borderColor: WTWColor.tan_border, text: 'Tan',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.deep, borderColor: WTWColor.deep_border, text: 'Deep',),
          SizedBox(height: 16.h,),
          SkinToneCard(color: WTWColor.dark, borderColor: WTWColor.dark_border, text: 'Dark',),
          SizedBox(height: 16.h,),
          BodyShapeCard(icon: 'assets/images/authentication/body_shape/not_sure_body.png', text: 'I\'m not sure',),
          SizedBox(height: 175.h,),
        ],
      ),
    );
  }
}
