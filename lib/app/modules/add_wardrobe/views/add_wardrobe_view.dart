import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/add_wardrobe_controller.dart';

class AddWardrobeView extends GetView<AddWardrobeController> {
  const AddWardrobeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: WTWColor.background,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 20.sp,
              color: WTWColor.text_icons,
            ),
          ],
        ),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 28.68.h,),

              ResetPasswordHeadText(text: 'Add your Wardrobe!'),

              SizedBox(height: 12.h,),

              ExtrasSubheadText(text: 'Digitize your real clothes in seconds.\nOrganize and see what you own.',),

              SizedBox(height: 22.32.h,),

              MoreUploadCard(),

              SizedBox(height: 25.h,),

              TutorialCard(),

              SizedBox(height: 25.h,),

              AddWardrobeCard(
                fillColor: Colors.white,
                borderColor: WTWColor.primary,
                borderWidth: 2,
                image: 'assets/images/add_wardrobe/upload.png',
                title: 'Upload from gallery',
                subTitle: 'Select multiple photos',
              ),

              SizedBox(height: 16.h,),

              AddWardrobeCard(
                fillColor: Colors.white,
                borderColor: WTWColor.secondary_bg.withAlpha(128),
                borderWidth: 1,
                image: 'assets/images/add_wardrobe/capture.png',
                title: 'Take photos now',
                subTitle: 'Capture items one by one',
              ),

              SizedBox(height: 16.h,),

              AddWardrobeCard(
                fillColor: WTWColor.accent.withAlpha(26),
                borderColor: WTWColor.accent.withAlpha(77),
                borderWidth: 1,
                image: 'assets/images/add_wardrobe/download.png',
                title: 'Download your 10 favorites',
                subTitle: 'Start with key pieces',
              ),

              SizedBox(height: 25.h,),

              WhatHappensNext(),

              SizedBox(height: 30.69.h,),
              
              OnboardingButton(text: 'Continue', onTap: () => Get.toNamed('/dashboard')),

              SizedBox(height: 43.31.h,),
            ],
          ),
        ),
      ),
    );
  }
}
