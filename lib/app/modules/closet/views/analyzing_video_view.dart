import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/quick_scan_multi_item_view.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

class AnalyzingVideoView extends GetView {
  const AnalyzingVideoView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog(
        backgroundColor: Colors.white,
        child: GestureDetector(
          onTap: () {  },
          child: Padding(
            padding: EdgeInsets.all(25.r),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(23.r),
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
                    child: Opacity(
                      opacity: 0.7972,
                      child: Image.asset(
                        'assets/images/closet/my_closet/quick_scan/analyzing_video.png',
                        scale: 4,
                      ),
                    ),
                  ),
              
                  SizedBox(height: 15.h,),
              
                  Text(
                    'Analyzing Video',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
              
                  SizedBox(height: 15.h,),
              
                  Text(
                    'Our AI is identifying and extracting clothing items from your captured frames',
                    style: TextStyle(
                      color: Color(0xFF4B5563),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Comfortaa',
                    ),
                    textAlign: TextAlign.center,
                  ),
              
                  SizedBox(height: 22.h,),
              
                  Stack(
                    children: [
                      Container(
                        width: 290.w,
                        height: 7.5.h,
                        decoration: BoxDecoration(
                          color: Color(0xFFAEAEAE).withAlpha(51),
                          borderRadius: BorderRadius.circular(3.75.r),
                        ),
                      ),
              
                      Container(
                        width: ((290*45)/100).w,
                        height: 7.5.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              WTWColor.primary,
                              WTWColor.accent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(3.75.r),
                        ),
                      ),
                    ],
                  ),
              
                  SizedBox(height: 12.5.h,),
              
                  Text(
                    '45% complete',
                    style: TextStyle(
                      color: Colors.black.withAlpha(179),
                      fontSize: 17.5.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Comfortaa',
                    ),
                    textAlign: TextAlign.center,
                  ),
              
                  SizedBox(height: 20.h,),
              
                  Row(
                    spacing: 15.w,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.03.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: WTWColor.primary,
                          border: Border.all(
                            color: WTWColor.primary,
                            width: 2.5.r,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/complete.png',
                          scale: 4,
                        ),
                      ),
              
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Processing captured frames',
                          style: TextStyle(
                            color: WTWColor.primary.withAlpha(204),
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                      )
                    ],
                  ),
              
                  SizedBox(height: 15.h,),
              
                  Row(
                    spacing: 15.w,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.03.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: WTWColor.primary,
                          border: Border.all(
                            color: WTWColor.primary,
                            width: 2.5.r,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/complete.png',
                          scale: 4,
                        ),
                      ),
              
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Detecting clothing items',
                          style: TextStyle(
                            color: WTWColor.primary.withAlpha(204),
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                      )
                    ],
                  ),
              
                  SizedBox(height: 15.h,),
              
                  Row(
                    spacing: 15.w,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.03.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: WTWColor.accent.withAlpha(51),
                          border: Border.all(
                            color: WTWColor.accent,
                            width: 2.5.r,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/processing.png',
                          scale: 4,
                        ),
                      ),
              
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Enhancing item details',
                          style: TextStyle(
                            color: WTWColor.primary.withAlpha(204),
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                      )
                    ],
                  ),
              
                  SizedBox(height: 15.h,),
              
                  Row(
                    spacing: 15.w,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.03.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: WTWColor.primary,
                          border: Border.all(
                            color: WTWColor.primary,
                            width: 2.5.r,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/closet/my_closet/quick_scan/complete.png',
                          scale: 4,
                        ),
                      ),
              
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Generating item previews',
                          style: TextStyle(
                            color: WTWColor.primary.withAlpha(204),
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                      )
                    ],
                  ),
              
                  SizedBox(height: 20.h,),
              
                  WTWSecondaryButton(
                    text: 'Cancel Processing',
                    icon: 'assets/images/closet/my_closet/quick_scan/cancel_processing.png',
                    onTap: () {  },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
