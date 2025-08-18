import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra4View extends GetView {
  const Extra4View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 132.68.h,),

          ResetPasswordHeadText(text: 'What’ your Vibe?'),

          SizedBox(height: 12.h,),

          ExtrasSubheadText(text: 'Choose  the styles you feel most\nat home in.',),

          SizedBox(height: 24.08.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VibeCard(icon: 'assets/images/authentication/vibe/casual.png', text: 'Casual',),
              SizedBox(width: 16.66.w,),
              VibeCard(icon: 'assets/images/authentication/vibe/chic.png', text: 'Chic',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VibeCard(icon: 'assets/images/authentication/vibe/sporty.png', text: 'Sporty',),
              SizedBox(width: 16.66.w,),
              VibeCard(icon: 'assets/images/authentication/vibe/minimal.png', text: 'Minimal',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VibeCard(icon: 'assets/images/authentication/vibe/romantic.png', text: 'Romantic',),
              SizedBox(width: 16.66.w,),
              VibeCard(icon: 'assets/images/authentication/vibe/edgy.png', text: 'Edgy',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VibeCard(icon: 'assets/images/authentication/vibe/romantic.png', text: 'Romantic',),
              SizedBox(width: 16.66.w,),
              VibeCard(icon: 'assets/images/authentication/vibe/edgy.png', text: 'Edgy',),
            ],
          ),
        ],
      ),
    );
  }
}
