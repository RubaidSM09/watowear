import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/congratulations_popup_view.dart';
import 'package:watowear_chole/app/modules/closet/views/review_crops_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_text_fields.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class AddItemDetailsView extends GetView {
  const AddItemDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Add Item Details'),
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
        
                Container(
                  width: 91.22807312011719.w,
                  height: 91.22807312011719.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F1EB),
                    borderRadius: BorderRadius.circular(13.68.r),
                    border: Border.all(
                      color: WTWColor.secondary_bg,
                      width: 2.28.r,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13.68.r),
                    child: Image.asset(
                      'assets/images/closet/my_closet/quick_scan/add_item_details/add_item_details.png',
                      scale: 4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        
                SizedBox(height: 26.h,),
        
                Container(
                  padding: EdgeInsets.all(11.52.r),
                  decoration: BoxDecoration(
                    color: WTWColor.accent.withAlpha(26),
                    borderRadius: BorderRadius.circular(9.12.r),
                    border: Border.all(
                      color: WTWColor.accent.withAlpha(77),
                      width: 1.14.r,
                    ),
                  ),
                  child: Row(
                    spacing: 8.w,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/closet/my_closet/quick_scan/add_item_details/quick_entry_mode.png',
                        scale: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quick Entry Mode',
                            style: TextStyle(
                              color: WTWColor.accent,
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                          Text(
                            'Add basic details now, complete tagging\nlater',
                            style: TextStyle(
                              color: Color(0xFF4B5563),
                              fontSize: 13.68.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        
                SizedBox(height: 25.h,),
        
                Container(
                  padding: EdgeInsets.all(11.52.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9.12.r),
                    border: Border.all(
                      color: WTWColor.secondary_bg,
                      width: 1.14.r,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 13.69.h,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15.96.r),
                        decoration: BoxDecoration(
                          color: WTWColor.primary.withAlpha(26),
                          border: Border.all(color: Color(0xFFE5E7EB)),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/add_item_details/why_add_details.png',
                          scale: 4,
                        ),
                      ),
                      Text(
                        'Why add details?',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontSize: 15.96.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      Text(
                        'Basic item information helps our AI generate better outfit suggestions and makes it easier to find your clothes later.',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 13.68.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      )
                    ],
                  ),
                ),
        
                SizedBox(height: 25.h,),
                
                AddItemDetailsTextField(
                  labelText: 'Item Name',
                  labelIcon: 'assets/images/closet/my_closet/quick_scan/add_item_details/item_name.png',
                  hintText: 'e.g., Denim Jacket, Blue Sweater...',
                  examples: ['Denim Jacket', 'Blue Jacket', 'Casual Jacket'],
                  isRequired: true,
                ),
        
                SizedBox(height: 25.h,),
        
                AddItemDetailsTextField(
                  labelText: 'Brand',
                  labelIcon: 'assets/images/closet/my_closet/quick_scan/add_item_details/brand.png',
                  hintText: 'e.g., Levi\'s, Zara, H&M...',
                  examples: ['Levi\'s', 'Zara', 'H&M', 'Uniqlo'],
                  isRequired: false,
                ),
        
                SizedBox(height: 25.h,),
        
                AddItemDetailsTextField(
                  labelText: 'Primary Color',
                  labelIcon: 'assets/images/closet/my_closet/quick_scan/add_item_details/primary_color.png',
                  hintText: 'e.g., Blue, Navy, Light Blue...',
                  examples: ['Denim Jacket', 'Blue Jacket', 'Casual Jacket'],
                  isRequired: true,
                ),
        
                SizedBox(height: 25.h,),
        
                AddItemDetailsTextField(
                  labelText: 'Notes',
                  labelIcon: 'assets/images/closet/my_closet/quick_scan/add_item_details/notes.png',
                  hintText: 'Any additional details about fit, style, or when you wear it...',
                  maxLines: 3,
                  isRequired: false,
                ),
        
                SizedBox(height: 30.h,),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: WTWPrimaryButton(
                    text: 'Save Draft',
                    icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/save_draft.png',
                    onTap: () {  },
                  ),
                ),
        
                SizedBox(height: 20.h,),
        
                WTWSecondaryButton(
                  text: 'Continue',
                  width: 360.w,
                  onTap: () {
                    Get.to(ReviewCropsView());
                    Get.dialog(CongratulationsPopupView());
                  },
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
