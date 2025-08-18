import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra7View extends GetView {
  const Extra7View({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 132.68.h,),

          ResetPasswordHeadText(text: 'Anyone whose style\nyou love?'),

          SizedBox(height: 12.h,),

          ExtrasSubheadText(text: 'I’ll keep them in mind.',),

          SizedBox(height: 24.08.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CelebrityCard(image: 'assets/images/authentication/celebrity/zendaya.png', text: 'Zendaya',),
              SizedBox(width: 16.66.w,),
              CelebrityCard(image: 'assets/images/authentication/celebrity/timothée_chalamet.png', text: 'Timothée Chalamet',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CelebrityCard(image: 'assets/images/authentication/celebrity/emma_stone.png', text: 'Emma Stone',),
              SizedBox(width: 16.66.w,),
              CelebrityCard(image: 'assets/images/authentication/celebrity/ryan_gosling.png', text: 'Ryan Gosling',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CelebrityCard(image: 'assets/images/authentication/celebrity/margot_robbie.png', text: 'Margot Robbie',),
              SizedBox(width: 16.66.w,),
              CelebrityCard(image: 'assets/images/authentication/celebrity/michael_jordan.png', text: 'Michael B. Jordan',),
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CelebrityCard(image: 'assets/images/authentication/celebrity/anya_taylor_joy.png', text: 'Anya Taylor-Joy',),
              SizedBox(width: 16.66.w,),
              CelebrityCard(image: 'assets/images/authentication/celebrity/dev_patel.png', text: 'Dev Patel',),
            ],
          ),

          SizedBox(height: 25.00108398.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              StyleInspirationText(),
            ],
          ),

          SizedBox(height: 175.h,),
        ],
      ),
    );
  }
}
