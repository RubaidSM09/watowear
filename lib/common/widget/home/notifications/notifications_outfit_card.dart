import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

class NotificationsOutfitCard extends StatelessWidget {
  const NotificationsOutfitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 13.68.r,
            offset: Offset(0.w, 4.56.h),
          )
        ]
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r),),
            child: Image.asset(
              'assets/images/home/notifications/casual_friday_chic.png',
              width: 390.w,
              fit: BoxFit.cover,
              scale: 4,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18.25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Casual Friday Chic',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.25.sp,
                  ),
                ),

                SizedBox(height: 11.08158035.h,),

                Text(
                  'Perfect for a relaxed work day with friends after',
                  style: TextStyle(
                    color: Color(0xFF4B5563),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.96.sp,
                  ),
                ),

                SizedBox(height: 11.86596725.h,),

                Wrap(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 6.75.w,
                  runSpacing: 6.75.h,
                  children: [
                    NotificationsOutfitCardCategories(text: 'Casual',),
                    NotificationsOutfitCardCategories(text: 'Comfortable',),
                    NotificationsOutfitCardCategories(text: 'Office-friendly',),
                  ],
                ),

                SizedBox(height: 18.23947449.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WTWPrimaryButton(
                      text: 'View Details',
                      icon: 'assets/images/home/notifications/view_details.png',
                      width: 169.91229248046875.w,
                      height: 54.736839294433594.h,
                      paddingWidth: 13.06,
                      paddingHeight: 13.54,
                      onTap: () {  },
                    ),
                    WTWSecondaryButton(
                      text: 'Share',
                      icon: 'assets/images/home/notifications/share.png',
                      width: 169.91229248046875.w,
                      height: 54.736839294433594.h,
                      paddingWidth: 13.06,
                      paddingHeight: 13.54,
                      onTap: () {  },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationsOutfitCardCategories extends StatelessWidget {
  final String text;

  const NotificationsOutfitCardCategories({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.68.w, vertical: 8.32.h),
      decoration: BoxDecoration(
        color: WTWColor.secondary_bg,
        borderRadius: BorderRadius.circular(4.56.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 13.68.sp,
        ),
      ),
    );
  }
}
