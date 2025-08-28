import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/quick_scan_view.dart';
import 'package:watowear_chole/app/modules/closet/views/review_crops_view.dart';
import 'package:watowear_chole/app/modules/closet/views/select_photos_view.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/my_closet_section.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class MyClosetView extends GetView {
  const MyClosetView({super.key});
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
                WTWAppbarText(text: 'My Closet'),
                GestureDetector(
                  onTap: () => Get.to(ReviewCropsView()),
                  child: Image.asset(
                    'assets/images/profile/edit.png',
                    width: 17.98.w,
                    height: 17.98.h,
                    scale: 4,
                  ),
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w,),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 25.h,),

              MyClosetSection(),
              
              SizedBox(height: 57.h,),
              
              WTWPrimaryButton(
                text: 'Import Images',
                width: 360.w,
                onTap: () => Get.to(SelectPhotosView()),
              ),

              SizedBox(height: 15.h,),

              WTWPrimaryButton(
                text: 'Quick Scan',
                width: 360.w,
                onTap: () => Get.to(QuickScanView()),
              ),

              SizedBox(height: 25.h,),
            ],
          ),
        ),
      ),
    );
  }
}
