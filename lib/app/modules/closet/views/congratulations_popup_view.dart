import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/generate_outfits_now_view.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';

class CongratulationsPopupView extends GetView {
  const CongratulationsPopupView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog(
        backgroundColor: Colors.white,
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
                      'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/congratulations.png',
                      scale: 4,
                    ),
                  ),
                ),

                SizedBox(height: 15.h,),

                Text(
                  'Congratuions!',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Comfortaa',
                  ),
                ),

                SizedBox(height: 15.h,),

                Text(
                  'Your wardrobe is growing beautifully. Now it\'s time to create some amazing outfits!',
                  style: TextStyle(
                    color: Color(0xFF4B5563),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Comfortaa',
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 22.h,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.9.w, vertical: 21.53.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFF4F1EB),
                        WTWColor.secondary_bg,
                      ],
                    ),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Column(
                    spacing: 15.h,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12.62.w,
                            children: [
                              Container(
                                padding: EdgeInsets.all(7.63.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.22.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withAlpha(26),
                                      blurRadius: 8.22.r,
                                      offset: Offset(0.w, 2.06.h),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/items_in_closet.png',
                                  scale: 4,
                                ),
                              ),

                              Text(
                                'Items in Closet',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.39.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),

                          Text(
                            '5',
                            style: TextStyle(
                              color: WTWColor.primary,
                              fontSize: 18.5.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12.62.w,
                            children: [
                              Container(
                                padding: EdgeInsets.all(7.63.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.22.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withAlpha(26),
                                      blurRadius: 8.22.r,
                                      offset: Offset(0.w, 2.06.h),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/possible_outfits.png',
                                  scale: 4,
                                ),
                              ),

                              Text(
                                'Possible Outfits',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.39.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),

                          Text(
                            '12+',
                            style: TextStyle(
                              color: WTWColor.primary,
                              fontSize: 18.5.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12.62.w,
                            children: [
                              Container(
                                padding: EdgeInsets.all(7.63.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.22.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withAlpha(26),
                                      blurRadius: 8.22.r,
                                      offset: Offset(0.w, 2.06.h),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/style_points.png',
                                  scale: 4,
                                ),
                              ),

                              Text(
                                'Style Points',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.39.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),

                          Text(
                            '+50',
                            style: TextStyle(
                              color: WTWColor.primary,
                              fontSize: 18.5.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25.h,),

                WTWPrimaryButton(
                  text: 'Generate Outfits Now',
                  icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/generate_outfits_now.png',
                  paddingLeftWidth: 40,
                  paddingRightWidth: 40,
                  onTap: () => Get.to(GenerateOutfitsNowView()),
                ),

                SizedBox(height: 10.h,),

                WTWSecondaryButton(
                  text: 'Keep Scanning Items',
                  icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/keep_scanning_items.png',
                  paddingWidth: 45,
                  onTap: () {  },
                ),

                SizedBox(height: 10.h,),

                WTWSecondaryButton(
                  text: 'Close',
                  icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/close.png',
                  onTap: () {  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
