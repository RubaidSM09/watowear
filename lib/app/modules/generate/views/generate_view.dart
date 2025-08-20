import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/generate_controller.dart';

class GenerateView extends GetView<GenerateController> {
  const GenerateView({super.key});
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
                WTWAppbarText(text: 'Add Item'),
                Image.asset(
                  'assets/images/home/outfit_details/favourite.png',
                  width: 17.5.w,
                  height: 20.h,
                  scale: 4,
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, /*top: 53.h*/),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 26.5.h,),

              Container(
                padding: EdgeInsets.all(4.43.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.86.r),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(13),
                      blurRadius: 2.22.r,
                      offset: Offset(0.w, 1.11.h)
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.19.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.65.r),
                        color: WTWColor.primary
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/generate/camera.png',
                            scale: 4,
                          ),
                          SizedBox(width: 8.87.w,),
                          Text(
                            'Camera',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.51.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.19.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.65.r),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/generate/gallery.png',
                            scale: 4,
                          ),
                          SizedBox(width: 8.87.w,),
                          Text(
                            'Gallery',
                            style: TextStyle(
                              color: WTWColor.primary,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.51.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
