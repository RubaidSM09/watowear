import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/uploading_items_view.dart';
import 'package:watowear_chole/common/widget/closet/my_closet/select_photos/select_photos_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_text.dart';

class SelectPhotosView extends GetView {
  const SelectPhotosView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Select Photos'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: WTWColor.secondary_bg,),

            SizedBox(height: 25.h,),

            SelectPhotosSection(),

            SizedBox(height: 27.h,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: WTWPrimaryButton(
                text: 'Done',
                onTap: () => Get.to(UploadingItemsView()),
              ),
            ),

            SizedBox(height: 25.h,),
          ],
        ),
      ),
    );
  }
}
