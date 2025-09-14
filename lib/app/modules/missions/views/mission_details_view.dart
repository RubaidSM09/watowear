import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/missions/mission_details/mission_details_progress_section.dart';
import 'package:watowear_chole/common/widget/missions/mission_details/mission_rewards_setcion.dart';
import 'package:watowear_chole/common/widget/missions/mission_details/task_to_complete_section.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class MissionDetailsView extends GetView {
  const MissionDetailsView({super.key});
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
                WTWAppbarText(text: 'Upload Items'),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.sp,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(26),
                          blurRadius: 6.r,
                          offset: Offset(0.w, 4.h),
                        ),
                        BoxShadow(
                          color: Colors.black.withAlpha(26),
                          blurRadius: 15.r,
                          offset: Offset(0.w, 10.h),
                        ),
                      ]
                  ),
                  child: Image.asset(
                    'assets/images/style_missions/more.png',
                    scale: 4,
                  ),
                )

              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),
              
              Padding(
                padding: EdgeInsets.all(25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MissionDetailsProgressSection(),
                
                    SizedBox(height: 20.h,),
                
                    MissionRewardsSetcion(),
                
                    SizedBox(height: 20.h,),
                
                    TaskToCompleteSection(),
        
                    SizedBox(height: 30.81270508.h,),
                    
                    Center(
                      child: WTWPrimaryButton(
                        text: 'Mark Mission Complete',
                        onTap: () {  },
                      ),
                    ),
        
                    SizedBox(height: 12.h,),
        
                    Center(
                      child: Text(
                        'Complete all tasks to unlock rewards.',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
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
