import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg),
        
                SizedBox(height: 25.h),
        
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22.81.r),
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
                                SizedBox.shrink(),
        
                                Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 27.37.sp,
                                  ),
                                ),
        
                                SizedBox.shrink(),
        
                                Column(
                                  spacing: 10.h,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Style Explorer',
                                      style: TextStyle(
                                        color: WTWColor.text_icons,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22.81.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 216.40350341796875.w,
                                      child: Text(
                                        'Discovering your fashion sense',
                                        style: TextStyle(
                                          color: Color(0xFF4B5563),
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.96.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
        
                                SizedBox.shrink(),
                              ],
                            ),
                          ),
                        ),
        
                        Positioned(
                          top: 146.63.h,
                          left: 23.95.w,
                          width: 342.1052551269531.w,
                          child: Column(
                            spacing: 14.3.h,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1,250 / 1,500 XP',
                                    style: TextStyle(
                                      color: WTWColor.text_icons,
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.96.sp,
                                    ),
                                  ),
        
                                  Text(
                                    '250 XP to Level 4',
                                    style: TextStyle(
                                      color: WTWColor.accent,
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.96.sp,
                                    ),
                                  ),
                                ],
                              ),
        
                              Stack(
                                children: [
                                  Container(
                                    width: 342.1052551269531.w,
                                    height: 9.122806549072266.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.56.r),
                                      color: WTWColor.secondary_bg.withAlpha(77),
                                      border: Border.all(color: Color(0xFFE5E7EB)),
                                    ),
                                  ),
                                  Container(
                                    width: ((342.1052551269531 * 1250) / 1500).w,
                                    height: 9.122806549072266.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.56.r),
                                      gradient: LinearGradient(
                                        colors: [WTWColor.primary, WTWColor.accent],
                                      ),
                                      border: Border.all(color: Color(0xFFE5E7EB)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
        
                        Positioned(
                          top: 215.05.h,
                          left: 23.95.w,
                          child: SizedBox(
                            width: 351.2280578613281.w,
                            child: Column(
                              spacing: 13.69.h,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(19.39.r),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          13.68.r,
                                        ),
                                        border: Border.all(
                                          color: Color(0xFFF4F1EB),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 125.4385986328125.w,
                                        child: Column(
                                          spacing: 4.56.h,
                                          children: [
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                color: WTWColor.primary,
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 27.37.sp,
                                              ),
                                            ),
        
                                            Text(
                                              'Days Active',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.68.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
        
                                    Container(
                                      padding: EdgeInsets.all(19.39.r),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          13.68.r,
                                        ),
                                        border: Border.all(
                                          color: Color(0xFFF4F1EB),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 125.4385986328125.w,
                                        child: Column(
                                          spacing: 4.56.h,
                                          children: [
                                            Text(
                                              '47',
                                              style: TextStyle(
                                                color: WTWColor.primary,
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 27.37.sp,
                                              ),
                                            ),
        
                                            Text(
                                              'Items Added',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.68.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
        
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(19.39.r),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          13.68.r,
                                        ),
                                        border: Border.all(
                                          color: Color(0xFFF4F1EB),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 125.4385986328125.w,
                                        child: Column(
                                          spacing: 4.56.h,
                                          children: [
                                            Text(
                                              '23',
                                              style: TextStyle(
                                                color: WTWColor.primary,
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 27.37.sp,
                                              ),
                                            ),
        
                                            Text(
                                              'Outfits\nCreated',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.68.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
        
                                    Container(
                                      padding: EdgeInsets.all(19.39.r),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          13.68.r,
                                        ),
                                        border: Border.all(
                                          color: Color(0xFFF4F1EB),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 125.4385986328125.w,
                                        child: Column(
                                          spacing: 4.56.h,
                                          children: [
                                            Text(
                                              '8',
                                              style: TextStyle(
                                                color: WTWColor.primary,
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 27.37.sp,
                                              ),
                                            ),
        
                                            Text(
                                              'Badges\nEarned',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.68.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
        
                        Positioned(
                          top: 481.89.h,
                          left: 23.95.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13.68.r),
                            child: DottedBorder(
                              options: RectDottedBorderOptions(
                                color: WTWColor.accent,
                                strokeWidth: 1.14.r,
                                dashPattern: [
                                  2.2807018756866455.w,
                                  2.2807018756866455.h,
                                ],
                              ),
                              child: Container(
                                padding: EdgeInsets.all(14.82.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.68.r),
                                  gradient: LinearGradient(
                                    colors: [
                                      WTWColor.accent.withAlpha(26),
                                      WTWColor.primary.withAlpha(26),
                                    ],
                                  ),
                                ),
                                child: Text(
                                  '🏆 Next Achievement: Style Master (Level 4)',
                                  style: TextStyle(
                                    color: WTWColor.accent,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        
                SizedBox(height: 20.85.h),
        
                Row(
                  spacing: 9.12.h,
                  children: [
                    Image.asset(
                      'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_milestones.png',
                      scale: 4,
                    ),
        
                    Text(
                      'Level Milestones',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 20.53.sp,
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 18.h),
        
                Column(
                  spacing: 14.69.h,
                  children: [
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.25.r),
                        gradient: LinearGradient(
                          colors: [
                            WTWColor.primary.withAlpha(13),
                            WTWColor.accent.withAlpha(13),
                          ],
                        ),
                        border: Border.all(
                          color: WTWColor.primary.withAlpha(51),
                          width: 1.14.r,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
        
                            children: [
                              Container(
                                padding: EdgeInsets.all(14.54.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.68.r),
                                  gradient: LinearGradient(
                                    colors: [WTWColor.primary, WTWColor.accent],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: WTWColor.primary.withAlpha(77),
                                      blurRadius: 18.25.r,
                                      offset: Offset(0.w, 4.56.h),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_1.png',
                                  scale: 4,
                                ),
                              ),
                              
                              Positioned(
                                top: -4.56.h,
                                left: 36.49.w,
                                child: Container(
                                  padding: EdgeInsets.all(6.41.r),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF28A745),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.28.r,
                                    )
                                  ),
                                  child: Image.asset(
                                    'assets/images/style_missions/rewards_achievements/rewards/progress_details/completed.png',
                                    scale: 4,
                                  ),
                                ),
                              )
                            ],
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 1: Fashion Newbie',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Complete onboarding and add first item',
                                  style: TextStyle(
                                    color: Color(0xFF4B5563),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '✓ Completed 2 weeks ago',
                                  style: TextStyle(
                                    color: Color(0xFF16A34A),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+75 XP',
                            style: TextStyle(
                              color: WTWColor.accent,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.25.r),
                        gradient: LinearGradient(
                          colors: [
                            WTWColor.primary.withAlpha(13),
                            WTWColor.accent.withAlpha(13),
                          ],
                        ),
                        border: Border.all(
                          color: WTWColor.primary.withAlpha(51),
                          width: 1.14.r,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
        
                            children: [
                              Container(
                                padding: EdgeInsets.all(14.54.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.68.r),
                                  gradient: LinearGradient(
                                    colors: [WTWColor.primary, WTWColor.accent],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: WTWColor.primary.withAlpha(77),
                                      blurRadius: 18.25.r,
                                      offset: Offset(0.w, 4.56.h),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_2.png',
                                  scale: 4,
                                ),
                              ),
        
                              Positioned(
                                top: -4.56.h,
                                left: 36.49.w,
                                child: Container(
                                  padding: EdgeInsets.all(6.41.r),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF28A745),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.28.r,
                                      )
                                  ),
                                  child: Image.asset(
                                    'assets/images/style_missions/rewards_achievements/rewards/progress_details/completed.png',
                                    scale: 4,
                                  ),
                                ),
                              )
                            ],
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 2: Wardrobe Builder',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Add 10 items and create 5 outfits',
                                  style: TextStyle(
                                    color: Color(0xFF4B5563),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '✓ Completed 2 weeks ago',
                                  style: TextStyle(
                                    color: Color(0xFF16A34A),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+100 XP',
                            style: TextStyle(
                              color: WTWColor.accent,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.25.r),
                        gradient: LinearGradient(
                          colors: [
                            WTWColor.accent.withAlpha(20),
                            WTWColor.primary.withAlpha(20),
                          ],
                        ),
                        border: Border.all(
                          color: WTWColor.accent,
                          width: 2.28.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: WTWColor.accent.withAlpha(26),
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.54.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.68.r),
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.accent,
                                  WTWColor.accent,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_3.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 3: Style Explorer',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Experiment with different styles and trends',
                                  style: TextStyle(
                                    color: Color(0xFF4B5563),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '📍 Current Level • 83% Complete',
                                  style: TextStyle(
                                    color: WTWColor.accent,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+150 XP',
                            style: TextStyle(
                              color: WTWColor.accent,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.25.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.white,
                            ],
                          ),
                          border: Border.all(
                            color: Color(0xFFF4F1EB),
                            width: 1.14.r,
                          ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.54.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.68.r),
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.secondary_bg,
                                  WTWColor.secondary_bg,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_4.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 4: Style Master',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Master advanced styling techniques',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '🔒 Unlock in 250 XP',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+200 XP',
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.25.r),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white,
                          ],
                        ),
                        border: Border.all(
                          color: Color(0xFFF4F1EB),
                          width: 1.14.r,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.54.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.68.r),
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.secondary_bg,
                                  WTWColor.secondary_bg,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_5.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 5: Fashion Icon',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Become a trendsetter and influencer',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '🔒 Unlock in 750 XP',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+300 XP',
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.25.r),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white,
                          ],
                        ),
                        border: Border.all(
                          color: Color(0xFFF4F1EB),
                          width: 1.14.r,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.54.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.68.r),
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.secondary_bg,
                                  WTWColor.secondary_bg,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/level_6.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 198.7774200439453.w,
                            child: Column(
                              spacing: 5.h,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 6: Style Legend',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.25.sp,
                                  ),
                                ),
                                Text(
                                  'Ultimate fashion mastery achieved',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  '🔒 Unlock in 1,500 XP',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '+500 XP',
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.25.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 20.57.h,),
        
                Row(
                  spacing: 9.12.h,
                  children: [
                    Image.asset(
                      'assets/images/style_missions/rewards_achievements/rewards/progress_details/recent_achievements.png',
                      scale: 4,
                    ),
        
                    Text(
                      'Recent Achievements',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 20.53.sp,
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 18.h),
        
                Column(
                  spacing: 13.69.h,
                  children: [
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: WTWColor.secondary_bg,),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.82.r),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.primary,
                                  WTWColor.accent,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/recent_achievements_1.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 200.66612243652344.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Photo Pro',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  'Added 25 items to wardrobe',
                                  style: TextStyle(
                                    color: Color(0xFF4B5563),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '2 days ago',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.68.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    Container(
                      padding: EdgeInsets.all(19.39.r),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: WTWColor.secondary_bg,),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(14.82.r),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  WTWColor.primary,
                                  WTWColor.accent,
                                ],
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/style_missions/rewards_achievements/rewards/progress_details/recent_achievements_2.png',
                              scale: 4,
                            ),
                          ),
        
                          SizedBox(
                            width: 200.66612243652344.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Social Butterfly',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),
                                Text(
                                  'Shared 5 outfits on social media',
                                  style: TextStyle(
                                    color: Color(0xFF4B5563),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Text(
                            '5 days ago',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.68.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 25.h,),
        
                WTWSecondaryButton(
                  text: 'View All Achievements',
                  width: 360.w,
                  onTap: () {  },
                ),
        
                SizedBox(height: 25.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
