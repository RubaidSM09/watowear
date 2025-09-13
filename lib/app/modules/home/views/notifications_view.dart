import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/home/notifications/notifications_outfit_card.dart';
import 'package:watowear_chole/common/widget/home/notifications/notifications_outfit_items_section.dart';
import 'package:watowear_chole/common/widget/home/notifications/notifications_upper_section.dart';
import 'package:watowear_chole/common/widget/home/notifications/notifications_weather_context_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class NotificationsView extends GetView {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            WTWAppbarText(text: 'Notification'),
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

              NotificationsUpperSection(),

              SizedBox(height: 20.85894897.h,),

              NotificationsOutfitCard(),

              SizedBox(height: 20.h,),

              NotificationsOutfitItemsSection(),

              SizedBox(height: 20.h,),

              NotificationsWeatherContextSection(),

              SizedBox(height: 20.33702209.h,),
              
              WTWPrimaryButton(
                text: 'I’ll Wear This Today',
                icon: 'assets/images/home/notifications/waer_this_today.png',
                onTap: () {  },
              ),

              SizedBox(height: 16.h,),

              WTWSecondaryButton(
                text: 'Create Similar Outfit',
                icon: 'assets/images/home/notifications/create_similar_outfit.png',
                width: 360.w,
                onTap: () {  },
              ),

              SizedBox(height: 16.h,),

              WTWSecondaryButton(
                text: 'Save for Later',
                icon: 'assets/images/home/notifications/save_for_later.png',
                width: 360.w,
                onTap: () {  },
              ),

              SizedBox(height: 25.h,),
            ],
          ),
        ),
      ),
    );
  }
}
