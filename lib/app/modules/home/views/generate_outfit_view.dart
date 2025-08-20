import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';
import 'package:watowear_chole/common/widget/custom_widgets.dart';
import 'package:watowear_chole/common/widget/misc.dart';

class GenerateOutfitView extends GetView {
  const GenerateOutfitView({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 342.w,
        padding: EdgeInsets.symmetric(vertical: 32.w,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GenerateOutfitPic(),

              SizedBox(height: 24.h,),

              GenerateOutfitTopText(),

              SizedBox(height: 12.h,),

              GenerateOutfitMidText(),

              SizedBox(height: 8.h,),

              GenerateOutfitBottomText(),

              SizedBox(height: 32.h,),

              WTWLoader(),

              SizedBox(height: 32.h,),

              WTWLoadingBar(progress: 1),

              SizedBox(height: 16.h,),

              Text(
                'Analyzing your style preferences...',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 24.h,),

              GenerateOutfitBottomRows(),
            ],
          ),
        ),
      ),
    );
  }
}
