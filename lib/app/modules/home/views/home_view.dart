import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/home/menu.png',
              width: 17.5.w,
              height: 15.h,
              scale: 4,
            ),
            Image.asset(
              'assets/images/onboarding/onboarding1Text.png',
              color: WTWColor.text_icons,
              width: 148.35238647460938.w,
              height: 37.h,
              scale: 4,
            ),
            Image.asset(
              'assets/images/home/notifications.png',
              width: 17.5.w,
              height: 20.h,
              scale: 4,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(color: WTWColor.secondary_bg,),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 53.h),
              child: Column(
                children: [
                  NewToWatowear(),

                  SizedBox(height: 29.h,),

                  ResetPasswordHeadText(text: 'Welcome to Watowear!'),

                  SizedBox(height: 12.h,),

                  Text(
                    'Let’s get you started with your personalized style journey',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 29.h,),

                  Row(
                    children: [
                      Text(
                        'Quick Actions',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  SizedBox(height: 9.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      QuickActionButton(text: 'Add items', logo: 'assets/images/home/add_item.png', onTap: () {  }),
                      QuickActionButton(text: 'Generate Outfit', logo: 'assets/images/home/generate_outfit.png', logoColor: WTWColor.accent, onTap: () {  }),
                    ],
                  ),

                  SizedBox(height: 21.h,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
