import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/select_photos/uploading_items/uploading_items_overall_progress_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/closet/my_closet/select_photos/uploading_items/uploading_items_section.dart';
import '../../../../common/widget/custom_text.dart';

class UploadingItemsView extends GetView {
  const UploadingItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Uploading Items'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w,),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 25.h,),

              UploadingItemsOverallProgressSection(),

              SizedBox(height: 30.h,),

              UploadingItemsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
