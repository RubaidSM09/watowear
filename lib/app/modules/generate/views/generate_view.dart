import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/generate/views/photo_preview_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';
import 'package:watowear_chole/common/widget/misc.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/generate_controller.dart';

class GenerateView extends GetView<GenerateController> {
  const GenerateView({super.key});
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
                WTWAppbarText(text: 'Add Item'),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, /*top: 53.h*/),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 26.5.h,),
        
                CameraOrGalleryCard(),
        
                SizedBox(height: 17.728.h,),
        
                WTWCamera(),
        
                SizedBox(height: 25.91.h,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UploadFromGalleryButton(onTap: () {  }),
        
                    CaptureButton(onTap: () {  }),
                  ],
                ),
        
                SizedBox(height: 25.73.h,),
        
                TipsForBetterPhotosSection(),
        
                SizedBox(height: 25.h,),
                
                WTWSecondaryButton(
                  text: 'Switch Camera',
                  icon: 'assets/images/generate/switch_camera.png',
                  onTap: () {  },
                ),
        
                SizedBox(height: 12.64.h,),
        
                WTWPrimaryButton(
                  text: 'Preview',
                  onTap: () => Get.to(PhotoPreviewView()),
                ),
        
                SizedBox(height: 30.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
