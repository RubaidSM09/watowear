import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

class SettingsBottomSection extends StatelessWidget {
  const SettingsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 36.49123001098633.w,
                  height: 36.49123001098633.h,
                  padding: EdgeInsets.all(8.27.w),
                  decoration: BoxDecoration(
                    color: WTWColor.primary,
                    borderRadius: BorderRadius.circular(9.12.r),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Image.asset(
                    'assets/images/home/settings/hanger-removebg-preview.png',
                    fit: BoxFit.cover,
                    scale: 4,
                  ),
                ),
                SizedBox(width: 9.128769989.w,),
                Text(
                  'WATOWEAR',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 20.53.sp,
                  ),
                )
              ],
            ),

            SizedBox(height: 9.118769989.h,),

            Text(
              'Version 1.2.0 (Build 42)',
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.68.sp,
              ),
            ),

            SizedBox(height: 4.56.h,),

            Text(
              '© 2024 WATOWEAR. All rights reserved.',
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 13.68.sp,
              ),
            ),

            SizedBox(height: 20.h,),

            WTWPrimaryButton(
              text: 'Log Out',
              icon: 'assets/images/home/settings/log_out.png',
              onTap: () {  },
            ),

            SizedBox(height: 30.h,),
          ],
        ),
      ),
    );
  }
}
