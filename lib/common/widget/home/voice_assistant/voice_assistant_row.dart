import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class VoiceAssistantRow extends StatelessWidget {
  final String image;

  final bool switchedState;
  final RxBool isSwitchedOn;

  VoiceAssistantRow({
    required this.image,
    required this.switchedState,
    super.key
  }) : isSwitchedOn = switchedState.obs;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 26.94700813.r,
          backgroundImage: AssetImage(
            image,
          ),
        ),

        SizedBox(width: 9.52.w,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Voice Assistant',
              style: TextStyle(
                color: WTWColor.text_icons,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 20.21.sp,
              ),
            ),
            SizedBox(
              width: 254.87380981445312.w,
              child: Text(
                'Control your closet hands-free with voice commands.',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 15.72.sp,
                ),
              ),
            )
          ],
        ),

        SizedBox(width: 9.52.w,),

        Obx(() {
          return GestureDetector(
            onTap: () {
              isSwitchedOn.value = !isSwitchedOn.value;
            },
            child: Container(
              padding: isSwitchedOn.value
                  ? EdgeInsets.only(
                  left: 25.09.w, right: 2.28.w, top: 2.28.h, bottom: 2.28.h)
                  : EdgeInsets.only(
                  left: 2.28.w, right: 25.09.w, top: 2.28.h, bottom: 2.28.h),
              decoration: BoxDecoration(
                color: isSwitchedOn.value ? WTWColor.primary : WTWColor
                    .secondary_bg,
                borderRadius: BorderRadius.circular(13.68.r),
                border: Border.all(color: Color(0xFFE5E7EB)),
              ),
              child: Container(
                width: 22.807018280029297.w,
                height: 22.807018280029297.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
