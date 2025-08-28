import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/add_item_details_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class QuickScanMultiItemView extends GetView {
  const QuickScanMultiItemView({super.key});
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
                WTWAppbarText(text: 'Quick Scan'),
                Image.asset(
                  'assets/images/home/filter.png',
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
          padding: EdgeInsets.symmetric(horizontal: 25.w,),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 25.h,),

              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(31),
                      blurRadius: 32.16.r,
                      offset: Offset(0.w, 10.72.h,),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(21.44.r),
                  child: DottedBorder(
                    options: RectDottedBorderOptions(
                      dashPattern: [2.680000066757202.w, 2.680000066757202.h],
                      strokeWidth: 4.02.r,
                      color: WTWColor.secondary_bg,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 85.59.w, vertical: 45.39.h,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21.44.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(31),
                            blurRadius: 32.16.r,
                            offset: Offset(0.w, 10.72.h,)
                          )
                        ]
                      ),
                      child: Container(
                        width: 96.82337951660156.w,
                        height: 96.82337951660156.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: WTWColor.primary,
                            width: 2.68.r,
                          )
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40.h,),

              Text(
                'Quick Multi-Item Scan',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontSize: 27.37.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Comfortaa',
                ),
              ),

              SizedBox(height: 23.h,),

              Text(
                'Lay out 3–5 items on a white sheet. Tap to capture all at once!',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Comfortaa',
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 25.h,),

              Column(
                spacing: 18.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 9.w,
                    children: [
                      Image.asset(
                        'assets/images/closet/my_closet/quick_scan/how_it_workd.png',
                        scale: 4,
                      ),

                      Text(
                        'How it works',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontSize: 18.25.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(22.81.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(15),
                          blurRadius: 9.12.r,
                          offset: Offset(0.w, 2.28.h),
                        ),
                      ]
                    ),
                    child: Row(
                      spacing: 11.5.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.09.r),
                          decoration: BoxDecoration(
                            color: WTWColor.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFE5E7EB)),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 289.64910888671875.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4.h,
                            children: [
                              Text(
                                'Prepare your items',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 18.25.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Choose 3–5 clothing items you want to add to your closet',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 15.96.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(22.81.r),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(15),
                            blurRadius: 9.12.r,
                            offset: Offset(0.w, 2.28.h),
                          ),
                        ]
                    ),
                    child: Row(
                      spacing: 11.5.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.09.r),
                          decoration: BoxDecoration(
                            color: WTWColor.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFE5E7EB)),
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 289.64910888671875.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4.h,
                            children: [
                              Text(
                                'Lay on white background',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 18.25.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Place items flat on a white sheet or clean surface',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 15.96.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(22.81.r),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(15),
                            blurRadius: 9.12.r,
                            offset: Offset(0.w, 2.28.h),
                          ),
                        ]
                    ),
                    child: Row(
                      spacing: 11.5.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.09.r),
                          decoration: BoxDecoration(
                            color: WTWColor.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFE5E7EB)),
                          ),
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 289.64910888671875.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4.h,
                            children: [
                              Text(
                                'Ensure good lighting',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 18.25.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Natural light works best for accurate color detection',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 15.96.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(22.81.r),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(15),
                            blurRadius: 9.12.r,
                            offset: Offset(0.w, 2.28.h),
                          ),
                        ]
                    ),
                    child: Row(
                      spacing: 11.5.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.09.r),
                          decoration: BoxDecoration(
                            color: WTWColor.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFE5E7EB)),
                          ),
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 289.64910888671875.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4.h,
                            children: [
                              Text(
                                'Capture & let AI work',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 18.25.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Our AI will identify and categorize each item automatically',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 15.96.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25.h,),

              Container(
                padding: EdgeInsets.all(19.39.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: WTWColor.accent.withAlpha(26),
                  border: Border.all(
                    color: WTWColor.accent.withAlpha(51),
                    width: 1.14.r,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 14.w,
                  children: [
                    Image.asset(
                      'assets/images/closet/my_closet/quick_scan/pro_tips.png',
                      scale: 4,
                    ),

                    SizedBox(
                      width: 320.31.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 9.125.h,
                        children: [
                          Text(
                            'Pro Tips',
                            style: TextStyle(
                              color: WTWColor.text_icons,
                              fontSize: 18.25.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),

                          Text(
                            '• Keep items spread out, not overlapping\n• Include accessories like belts, jewelry, bags\n• Avoid shadows by using even lighting',
                            style: TextStyle(
                              color: Color(0xFF374151),
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 25.6.h,),

              WTWPrimaryButton(
                text: 'Upload Photos Instead',
                icon: 'assets/images/closet/my_closet/quick_scan/upload.png',
                width: 360.w,
                onTap: () {  },
              ),

              SizedBox(height: 24.h,),

              WTWSecondaryButton(
                text: 'Continue',
                width: 360.w,
                onTap: () => Get.to(AddItemDetailsView()),
              ),

              SizedBox(height: 25.h,),

              Column(
                spacing: 18.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 9.w,
                    children: [
                      Image.asset(
                        'assets/images/closet/my_closet/quick_scan/recent_searches.png',
                        scale: 4,
                      ),

                      Text(
                        'Recent Scans',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontSize: 18.25.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ],
                  ),

                  Row(
                    // spacing: 14.h,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(13.68.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Column(
                          spacing: 9.h,
                          children: [
                            Container(
                              width: 160.7894744873047.w,
                              height: 91.22807312011719.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.12.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9.12.r),
                                child: Image.asset(
                                  'assets/images/closet/my_closet/quick_scan/recent_scans_1.png',
                                  scale: 4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Text(
                              '5 items • 2 min ago',
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

                      Container(
                        padding: EdgeInsets.all(13.68.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Column(
                          spacing: 9.h,
                          children: [
                            Container(
                              width: 160.7894744873047.w,
                              height: 91.22807312011719.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.12.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9.12.r),
                                child: Image.asset(
                                  'assets/images/closet/my_closet/quick_scan/recent_scans_2.png',
                                  scale: 4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Text(
                              '3 items • 1 hour ago',
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
                    ],
                  )
                ],
              ),

              SizedBox(height: 25.h,),
            ],
          ),
        ),
      ),
    );
  }
}
