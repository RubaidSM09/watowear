import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/home/views/item_details_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class PhotoPreviewView extends GetView {
  const PhotoPreviewView({super.key});
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
                WTWAppbarText(text: 'Photo Preview'),
                Image.asset(
                  'assets/images/home/outfit_details/favourite.png',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: WTWColor.secondary_bg,),

            SizedBox(height: 3.4.h,),

            SizedBox(
              width: 440.w,
              height: 764.h,
              child: Image.asset(
                'assets/images/generate/photo_preview/preview.png',
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 27.w,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WTWPrimaryButton(
                    text: 'Keep Photo',
                    width: 180.w,
                    paddingWidth: 33,
                    onTap: () => Get.to(ItemDetailsView()),
                  ),
                  WTWPrimaryButton(
                    text: 'Retake Photo',
                    width: 180.w,
                    paddingWidth: 33,
                    onTap: () {  },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
