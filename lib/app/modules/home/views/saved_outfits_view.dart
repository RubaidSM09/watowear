import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/home/saved_outfits/saved_outfits_cards_section.dart';
import 'package:watowear_chole/common/widget/home/saved_outfits/saved_outfits_filter_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/home/settings/search_bar.dart';

class SavedOutfitsView extends GetView {
  const SavedOutfitsView({super.key});
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
                WTWAppbarText(text: 'Saved Outfits'),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/home/saved_outfit/edit.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                    SizedBox(width: 16.w,),
                    Image.asset(
                      'assets/images/home/saved_outfit/filter.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 24.4.h,),

              WTWSearchBar(searchBarText: 'e.g. red jacket, summer, formal...',),

              SizedBox(height: 20.20974457.h,),

              SavedOutfitsFilterSection(),

              SizedBox(height: 18.04230652.h,),

              SavedOutfitsCardsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
