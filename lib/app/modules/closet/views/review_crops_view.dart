import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/review_crops/review_crops_bottom_indicator.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/review_crops/review_crops_card_section.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class ReviewCropsView extends GetView {
  const ReviewCropsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Review Crops'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w,),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 25.h,),
        
                ReviewCropsCardSection(),
        
                SizedBox(height: 30.h,),
        
                ReviewCropsBottomIndicator(),
        
                SizedBox(height: 40.h,),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: WTWPrimaryButton(
                    text: 'Continue (0/5)',
                    onTap: () {  },
                  ),
                ),
        
                SizedBox(height: 16.h,),
        
                WTWSecondaryButton(
                  text: 'Skip All',
                  width: 360.w,
                  onTap: () {  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
