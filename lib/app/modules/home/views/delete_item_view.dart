import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';

class DeleteItemView extends GetView {
  const DeleteItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 35.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 64.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEF2F2),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFFEE2E2),
                      width: 2.sp,
                    )
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/home/item_details/delete.png',
                      scale: 4,
                    )
                  ),
                ),
      
                SizedBox(height: 24.h,),
      
                Text(
                  'Delete Item',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
      
                SizedBox(height: 8.h,),
      
                Text(
                  'Are you sure you want to delete this item? This action cannot be undone.',
                  style: TextStyle(
                    color: Color(0xFF4B5563),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
      
                SizedBox(height: 32.h,),
      
                DeleteButton(
                  text: 'Yes, Delete',
                  icon: 'assets/images/home/item_details/delete_white.png',
                  onTap: () {  },
                ),
      
                SizedBox(height: 12.h,),
      
                CancelButton(
                  text: 'Cancel',
                  icon: 'assets/images/home/item_details/cancel.png',
                  onTap: () => Get.back(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
