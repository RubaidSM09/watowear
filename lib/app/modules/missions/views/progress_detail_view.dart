import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class ProgressDetailView extends GetView {
  const ProgressDetailView({super.key});
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
                WTWAppbarText(text: 'Progress Detail'),
                Image.asset(
                  'assets/images/style_missions/rewards_achievements/rewards/progress_details/share.png',
                  scale: 4,
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 25.h,),

              Container(
                width: 390.w,
                height: 556.4912109375.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.81.r),
                  gradient: LinearGradient(
                    colors: [
                      WTWColor.primary.withAlpha(8),
                      WTWColor.accent.withAlpha(8),
                    ],
                  ),
                  border: Border.all(
                    color: WTWColor.primary.withAlpha(26),
                    width: 1.14.r,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 1.14.h,
                      left: 1.14.w,
                      child: Opacity(
                        opacity: 0.4,
                        child: Container(
                          width: 387.71929931640625.w,
                          height: 3.4210526943206787.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [WTWColor.primary, WTWColor.accent],
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 23.75.h,
                      left: 23.95.w,
                      child: SizedBox(
                        width: 351.2280578613281.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Level 3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.4.sp,
                                  ),
                                ),

                                SizedBox(width: 25.w),

                                Text(
                                  '1,250 / 1,500 XP',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              Icons.arrow_forward_ios,
                              color: WTWColor.primary,
                              size: 18.24561309814453.r,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      top: 50.18.h,
                      left: 19.39.w,
                      child: Stack(
                        children: [
                          Container(
                            width: 351.2280578613281.w,
                            height: 6.842105388641357.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.42.r),
                              color: WTWColor.secondary_bg.withAlpha(77),
                              border: Border.all(color: Color(0xFFE5E7EB)),
                            ),
                          ),
                          Container(
                            width: ((351.2280578613281 * 1250) / 1500).w,
                            height: 6.842105388641357.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.42.r),
                              gradient: LinearGradient(
                                colors: [WTWColor.primary, WTWColor.accent],
                              ),
                              border: Border.all(color: Color(0xFFE5E7EB)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: 61.58.h,
                      left: 19.39.w,
                      child: SizedBox(
                        width: 351.2280578613281.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${1500 - 1250} XP to Level ${3 + 1}',
                              style: TextStyle(
                                color: WTWColor.primary,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.54.sp,
                              ),
                            ),
                            Text(
                              '🏆 Next: Style Master',
                              style: TextStyle(
                                color: WTWColor.primary,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.54.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
