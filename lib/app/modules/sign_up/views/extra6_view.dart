import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

import '../../../../common/widget/custom_cards.dart';
import '../../../../common/widget/custom_text.dart';

class Extra6View extends GetView {
  const Extra6View({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 42.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32.68.h,),

            ResetPasswordHeadText(text: 'Any Favorite Colors?'),

            SizedBox(height: 12.h,),

            ExtrasSubheadText(text: 'Or Shades you never wear? I want\nto respect yur taste.',),

            SizedBox(height: 24.08.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorsText(text: 'Colors I love'),
              ],
            ),
            SizedBox(height: 15.8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorCard(color: WTWColor.color1,),
                FavColorCard(color: WTWColor.color2,),
                FavColorCard(color: WTWColor.color3,),
                FavColorCard(color: WTWColor.color4,),
                FavColorCard(color: WTWColor.color5,),
                FavColorCard(color: WTWColor.color6,),
              ],
            ),
            SizedBox(height: 12.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorCard(color: WTWColor.color7,),
                FavColorCard(color: WTWColor.color8,),
                FavColorCard(color: WTWColor.color9,),
                FavColorCard(color: WTWColor.color10,),
                FavColorCard(color: WTWColor.color11,),
                FavColorCard(color: WTWColor.color12,),
              ],
            ),

            SizedBox(height: 25.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorsText(text: 'Colors I avoid'),
              ],
            ),
            SizedBox(height: 15.8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorCard(color: WTWColor.color1,),
                FavColorCard(color: WTWColor.color2,),
                FavColorCard(color: WTWColor.color3,),
                FavColorCard(color: WTWColor.color4,),
                FavColorCard(color: WTWColor.color5,),
                FavColorCard(color: WTWColor.color6,),
              ],
            ),
            SizedBox(height: 12.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorCard(color: WTWColor.color7,),
                FavColorCard(color: WTWColor.color8,),
                FavColorCard(color: WTWColor.color9,),
                FavColorCard(color: WTWColor.color10,),
                FavColorCard(color: WTWColor.color11,),
                FavColorCard(color: WTWColor.color12,),
              ],
            ),

            SizedBox(height: 25.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorsText(text: 'Favorites:'),
              ],
            ),

            SizedBox(height: 17.31.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavColorsText(text: 'Avoid:'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
