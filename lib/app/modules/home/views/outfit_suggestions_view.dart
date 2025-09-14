import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';

import '../../../../common/custom_colors.dart';

class OutfitSuggestionsView extends GetView {
  const OutfitSuggestionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'Outfit Suggestions'),
                Image.asset(
                  'assets/images/home/filter.png',
                  width: 17.5.w,
                  height: 20.h,
                  scale: 4,
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, /*top: 53.h*/),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 26.5.h,),
                
                OutfitSuggestionsText(text: 'Help us learn your style—tell us what\nyou love'),
        
                SizedBox(height: 25.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WhatYouLoveCard(image: 'assets/images/home/outfit_suggestions/suggestion1.png',),
                    WhatYouLoveCard(image: 'assets/images/home/outfit_suggestions/suggestion2.png',),
                  ],
                ),
        
                SizedBox(height: 25.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/home/outfit_suggestions/voice.png',
                      scale: 4,
                    ),
                    SizedBox(width: 8.85.w,),
                    OutfitSuggestionsText(text: 'Tell us what you think'),
                  ],
                ),
        
                SizedBox(height: 25.h,),
        
                OutfitSuggestionsTextBold(text: 'Refine Suggestions'),
        
                SizedBox(height: 4.43.h,),
        
                OutfitSuggestionsText(text: 'Not quite right? Adjust tops, bottoms, shoes, or occasion to get better fits.'),
        
                SizedBox(height: 17.73.h,),
        
                Wrap(
                  spacing: 8.87.w,
                  runSpacing: 8.87.w,
                  alignment: WrapAlignment.center,
                  children: [
                    RefineSuggestionsButton(text: 'Tops', onTap: () {  },),
                    RefineSuggestionsButton(text: 'Bottoms', onTap: () {  },),
                    RefineSuggestionsButton(text: 'Shoes', onTap: () {  },),
                    RefineSuggestionsButton(text: 'Weather', onTap: () {  },),
                    RefineSuggestionsButton(text: 'Occasion', onTap: () {  },),
                  ],
                ),
        
                SizedBox(height: 25.h,),
        
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutfitCards(
                          image: 'assets/images/home/outfit_suggestions/board_meeting.png',
                          title: 'Board Meeting',
                          description: 'Professional and polished',
                        ),
                        OutfitCards(
                          image: 'assets/images/home/outfit_suggestions/street_style.png',
                          title: 'Street Style',
                          description: 'Urban and trendy',
                        ),
                      ],
                    ),
        
                    SizedBox(height: 17.73.h,),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutfitCards(
                          image: 'assets/images/home/outfit_suggestions/cozy_winter.png',
                          title: 'Cozy Winter',
                          description: 'Warm and comfortable',
                        ),
                        OutfitCards(
                          image: 'assets/images/home/outfit_suggestions/night_out.png',
                          title: 'Night Out',
                          description: 'Perfect for dinner dates',
                        ),
                      ],
                    ),
        
                    SizedBox(height: 25.h,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: GestureDetector(
        onTap: () {  },
        child: Container(
          width: 51.w,
          height: 51.w,
          decoration: BoxDecoration(
            color: WTWColor.accent,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/home/voice.png',
                width: 13.12417984008789.w,
                height: 19.0897159576416.h,
              ),
              SizedBox(height: 3.18.h,),
              Text(
                'Ask Chloé',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 5.13.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
