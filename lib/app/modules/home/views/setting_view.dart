import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/home/settings/all_settings_list.dart';
import 'package:watowear_chole/common/widget/home/settings/bottom_section.dart';
import 'package:watowear_chole/common/widget/home/settings/search_bar.dart';
import 'package:watowear_chole/common/widget/home/settings/upper_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {  },
          child: Image.asset(
            'assets/images/home/menu.png',
            width: 17.5.w,
            height: 15.h,
            scale: 4,
          ),
        ),
        title: Column(
          children: [
            WTWAppbarText(text: 'Settings'),
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

              WTWSearchBar(),

              SizedBox(height: 20.h,),

              SettingsUpperSection(),

              SizedBox(height: 20.h,),

              AllSettingsList(
                isNotificationActive: controller.isNotificationActive,
                isDarkMode: controller.isDarkMode,
              ),

              SizedBox(height: 20.h,),

              SettingsBottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
