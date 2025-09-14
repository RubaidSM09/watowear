import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/controllers/quick_scan_controller.dart';
import 'package:watowear_chole/app/modules/closet/views/quick_scan_multi_item_view.dart';
import 'package:watowear_chole/app/modules/closet/views/scan_done_view.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/quick_scan/detected_captured_remaining_section.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/quick_scan/quick_scan_camera_button.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/quick_scan/quick_scan_image_section.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/quick_scan/single_item_vs_quick_scan_selection_section.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class QuickScanView extends GetView<QuickScanController> {
  const QuickScanView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(QuickScanController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Quick Scan'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg),
        
                SizedBox(height: 25.h),
        
                SingleItemVsQuickScanSelectionSection(
                  isQuickScanSelected: controller.isQuickScanSelected.value,
                ),
        
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
