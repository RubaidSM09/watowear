import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_text_fields.dart';
import 'package:watowear_chole/common/widget/custom_widgets.dart';
import 'package:watowear_chole/common/widget/misc.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import 'delete_item_view.dart';

class ItemDetailsView extends GetView {
  const ItemDetailsView({super.key});
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
                WTWAppbarText(text: 'Item Details'),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.sp,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(26),
                        blurRadius: 6.r,
                        offset: Offset(0.w, 4.h),
                      ),
                      BoxShadow(
                        color: Colors.black.withAlpha(26),
                        blurRadius: 15.r,
                        offset: Offset(0.w, 10.h),
                      ),
                    ]
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/home/item_details/profile_pic.jpg',
                    ),
                  ),
                )

              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 26.5.h,),

              ItemPicSection(),

              SizedBox(height: 20.h,),

              CustomTextFieldWhite(
                labelText: 'Item Name',
                hintText: 'Blue Denim Jacket',
              ),

              SizedBox(height: 17.42793884.h,),

              CustomTextFieldWhite(
                labelText: 'Brand',
                hintText: 'Levi\'s',
              ),

              SizedBox(height: 17.42793884.h,),

              CustomTextFieldWhite(
                labelText: 'Color',
                hintText: 'Light Blue',
              ),

              SizedBox(height: 20.h,),

              AIGeneratedTagsSection(),

              SizedBox(height: 20.h,),

              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 20.h,),

              CustomTagsSection(),

              SizedBox(height: 20.h,),

              CustomTextFieldWhite(
                labelText: 'Notes',
                hintText: 'Perfect for layering. Goes well with dark jeans and sneakers.',
                maxLines: 6,
              ),

              SizedBox(height: 20.h,),

              ItemStatisticsSection(),

              SizedBox(height: 20.h,),
              
              WTWPrimaryButton(
                text: 'Save Changes',
                icon: 'assets/images/home/item_details/save.png',
                onTap: () {  },
              ),

              SizedBox(height: 16.h,),

              WTWSecondaryButton(
                text: 'Cancel',
                onTap: () => Get.dialog(DeleteItemView()),
              ),

              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),

      floatingActionButton: GestureDetector(
        onTap: () {  },
        child: Container(
          width: 51.w,
          height: 51.w,
          decoration: BoxDecoration(
            color: WTWColor.accent,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/home/voice.png',
                width: 13.12417984008789.w,
                height: 19.0897159576416.h,
              ),
              SizedBox(height: 3.18.h,),
              Text(
                'Ask Chloé',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 5.13.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
