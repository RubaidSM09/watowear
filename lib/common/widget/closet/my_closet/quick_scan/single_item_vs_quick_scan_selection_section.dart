import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../custom_colors.dart';

class SingleItemVsQuickScanSelectionSection extends StatelessWidget {
  final bool isQuickScanSelected;

  const SingleItemVsQuickScanSelectionSection({
    required this.isQuickScanSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    RxBool isQuickScan = isQuickScanSelected.obs;

    return Obx(() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(4.56.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.68.r),
              color: WTWColor.secondary_bg,
              border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if(isQuickScan.value){
                      isQuickScan.value = !isQuickScan.value;
                    }
                  },
                  child: Container(
                    width: 186.4385986328125.w,
                    padding: EdgeInsets.symmetric(vertical: 16.1.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.12.r),
                      color: isQuickScan.value ? Colors.transparent : Colors.white,
                      border: Border.all(color: isQuickScan.value ? Colors.transparent : Color(0xFFE5E7EB)),
                      boxShadow: [
                        BoxShadow(
                          color: isQuickScan.value ? Colors.black.withAlpha(0) : Colors.black.withAlpha(26),
                          blurRadius: 4.56.r,
                          offset: Offset(0.w, 2.28.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        spacing: 8.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/closet/my_closet/quick_scan/single_item.png',
                            scale: 4,
                          ),

                          Text(
                            'Single Item',
                            style: TextStyle(
                              color: isQuickScan.value ? WTWColor.text_icons : WTWColor.primary,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.96.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if(!isQuickScan.value){
                      isQuickScan.value = !isQuickScan.value;
                    }
                  },
                  child: Container(
                    width: 186.4385986328125.w,
                    padding: EdgeInsets.symmetric(vertical: 16.1.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.12.r),
                      color: isQuickScan.value ? Colors.white : Colors.transparent,
                      border: Border.all(color: isQuickScan.value ? Color(0xFFE5E7EB) : Colors.transparent),
                      boxShadow: [
                        BoxShadow(
                          color: isQuickScan.value ? Colors.black.withAlpha(26) : Colors.black.withAlpha(0),
                          blurRadius: 4.56.r,
                          offset: Offset(0.w, 2.28.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        spacing: 8.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/closet/my_closet/quick_scan/quick_scan.png',
                            scale: 4,
                          ),

                          Text(
                            'Quick-Scan',
                            style: TextStyle(
                              color: isQuickScan.value ? WTWColor.primary : WTWColor.text_icons,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.96.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 20.h,),

          // isQuickScan.value ? RewardsBadgesSection() : RewardsPointsSection(),
        ],
      );
    });
  }
}
