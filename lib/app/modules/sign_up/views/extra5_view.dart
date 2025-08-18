import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra5View extends GetView {
  const Extra5View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 132.68.h,),

          ResetPasswordHeadText(text: 'Do you want to stay in your comfort zone, or try new things?'),

          SizedBox(height: 12.h,),

          ExtrasSubheadText(text: 'I can keep it safe, or we can explore\nsome fresh ideas together.',),

          SizedBox(height: 24.08.h,),

          NewThingsCard(icon: 'assets/images/authentication/new_things/safe.png', text: 'Safe', subText: 'Stay with what you know'),
          SizedBox(height: 16.h,),
          NewThingsCard(icon: 'assets/images/authentication/new_things/adventurous.png', text: 'A bit adventurous', subText: 'Mix familiar with new'),
          SizedBox(height: 16.h,),
          NewThingsCard(icon: 'assets/images/authentication/new_things/surprise.png', text: 'Surprise me!', subText: 'I\'m ready for anything'),
        ],
      ),
    );
  }
}
