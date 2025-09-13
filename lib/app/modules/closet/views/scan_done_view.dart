import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/analyzing_video_view.dart';
import 'package:watowear_chole/app/modules/closet/views/quick_scan_multi_item_view.dart';
import 'package:watowear_chole/app/modules/closet/views/review_crops_view.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

class ScanDoneView extends GetView {
  const ScanDoneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: 500.4383850097656.w,
            height: 1083.h,
            child: Image.asset(
              'assets/images/closet/my_closet/quick_scan/quick_scan_image.png',
              fit: BoxFit.cover,
              scale: 4,
            ),
          ),

          SizedBox(
            width: 500.4383850097656.w,
            height: 1083.h,
            child: Image.asset(
              'assets/images/closet/my_closet/quick_scan/scan_done_shade.png',
              fit: BoxFit.cover,
              scale: 4,
            ),
          ),

          Positioned(
            top: 86.44.h,
            left: 74.87.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26.16.w, vertical: 12.51.h,),
              decoration: BoxDecoration(
                color: WTWColor.primary,
                borderRadius: BorderRadius.circular(11.37.r),
              ),
              child: Text(
                '3/5 frames Captured',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.53.sp,
                ),
              ),
            ),
          ),
          
          Positioned(
            top: 801.h,
            left: 40.w,
            child: WTWPrimaryButton(
              paddingLeftWidth: 130,
              paddingRightWidth: 130,
              text: 'Finish (3/5)',
              onTap: () {
                Get.to(QuickScanMultiItemView());
                Get.dialog(AnalyzingVideoView());
              },
            ),
          ),

          Positioned(
            top: 871.h,
            left: 40.w,
            child: WTWSecondaryButton(
              text: 'Cancel',
              width: 360.w,
              textColor: Colors.white,
              borderColor: Colors.white,
              onTap: (){  },
            ),
          ),
        ],
      ),
    );
  }
}


/*Stack(
            children: [
              Positioned(
                top: (336.19+387.52).h,
                left: (-6+197.61).w,
                child: Container(
                  width: 15.398104667663574.w,
                  height: 15.398104667663574.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withAlpha(77),
                  ),
                ),
              ),

              Positioned(
                top: (336.19+327.57).h,
                left: (-6+327.57).w,
                child: Container(
                  width: 15.398104667663574.w,
                  height: 15.398104667663574.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withAlpha(77),
                  ),
                ),
              ),

              Positioned(
                top: (336.19+193.76).h,
                left: (-6+383.67).w,
                child: Container(
                  width: 23.09715461730957.w,
                  height: 23.09715461730957.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: WTWColor.accent,
                    boxShadow: [
                      BoxShadow(
                        color: WTWColor.accent.withAlpha(204),
                        blurRadius: 15.4.r,
                      )
                    ]
                  ),
                ),
              ),

              Positioned(
                top: (336.19+52.25).h,
                left: (-6+327.57).w,
                child: Container(
                  width: 15.398104667663574.w,
                  height: 15.398104667663574.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: WTWColor.primary,
                      boxShadow: [
                        BoxShadow(
                          color: WTWColor.primary.withAlpha(153),
                          blurRadius: 15.4.r,
                        )
                      ]
                  ),
                ),
              ),

              Positioned(
                top: (336.19-7.7).h,
                left: (-6+197.61).w,
                child: Container(
                  width: 15.398104667663574.w,
                  height: 15.398104667663574.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: WTWColor.primary,
                      boxShadow: [
                        BoxShadow(
                          color: WTWColor.primary.withAlpha(153),
                          blurRadius: 15.4.r,
                        )
                      ]
                  ),
                ),
              ),
            ],
          ),*/

/*Positioned(
            top: 328.h,
            left: 10.57.w,
            child: Container(
              padding: EdgeInsets.all(25.66.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64.16.r),
                border: Border.all(
                  color: WTWColor.primary.withAlpha(77),
                  width: 5.13.r,
                )
              ),
              child: DottedBorder(
                options: RectDottedBorderOptions(
                  dashPattern: [10, 5],
                  strokeWidth: 2,
                  padding: EdgeInsets.all(16),
                ),
                child: Text(
                  'Rectangular Border',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )*/