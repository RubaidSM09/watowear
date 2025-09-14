import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/camera_access_required_view.dart';
import 'package:watowear_chole/app/modules/closet/views/review_crops_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/closet/my_closet/select_photos/uploading_items/uploading_items_section.dart';
import '../../../../common/widget/custom_text.dart';

class GenerateOutfitsNowView extends GetView {
  const GenerateOutfitsNowView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            WTWAppbarText(text: 'My Closet'),
            Icon(
              Icons.add,
              size: 25.r,
              color: WTWColor.text_icons,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w,),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 25.h,),
        
                UploadingItemsSection(),
        
                SizedBox(height: 26.h,),
        
                Container(
                  padding: EdgeInsets.all(27.37.r,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13.68.r),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(25.09.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              WTWColor.primary,
                              WTWColor.accent,
                            ],
                          ),
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/generate_outfits_now/add_more_items.png',
                          scale: 4,
                        ),
                      ),
        
                      SizedBox(height: 18.h,),
        
                      Text(
                        'Add More Items',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontSize: 18.25.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
        
                      SizedBox(height: 9.h,),
        
                      Text(
                        'Keep building your digital wardrobe',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 15.96.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
        
                      SizedBox(height: 18.h,),
        
                      WTWSecondaryButton(
                        text: 'Scan New Item',
                        icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/keep_scanning_items.png',
                        borderColor: WTWColor.secondary_bg,
                        onTap: () {
                          Get.to(ReviewCropsView());
                          Get.dialog(CameraAccessRequiredView());
                        },
                      )
                    ],
                  ),
                ),
        
                SizedBox(height: 25.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
