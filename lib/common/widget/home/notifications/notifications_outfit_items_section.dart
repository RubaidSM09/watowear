import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_colors.dart';

class NotificationsOutfitItemsSection extends StatelessWidget {
  const NotificationsOutfitItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(27.37.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/home/notifications/outfit_items.png',
                scale: 4,
              ),
              SizedBox(width: 9.122983627.w,),
              Text(
                'Outfit Items',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.25.sp,
                ),
              )
            ],
          ),

          SizedBox(height: 18.24158035.h,),

          NotificationsOutfitItemsSectionRow(
            icon: 'assets/images/home/notifications/cream_knit_sweater.png',
            title: 'Cream Knit Sweater',
            subtitle: 'From your closet',
          ),

          SizedBox(height: 13.68473724.h,),

          NotificationsOutfitItemsSectionRow(
            icon: 'assets/images/home/notifications/dark_denim_jeans.png',
            title: 'Dark Denim Jeans',
            subtitle: 'From your closet',
          ),

          SizedBox(height: 13.68473724.h,),

          NotificationsOutfitItemsSectionRow(
            icon: 'assets/images/home/notifications/white_sneakers.png',
            title: 'White Sneakers',
            subtitle: 'From your closet',
          ),
        ],
      ),
    );
  }
}

class NotificationsOutfitItemsSectionRow extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const NotificationsOutfitItemsSectionRow({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.68.w),
      decoration: BoxDecoration(
        color: Color(0xFFF4F1EB),
        borderRadius: BorderRadius.circular(13.68.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15.96.w),
            decoration: BoxDecoration(
              color: WTWColor.secondary_bg,
              borderRadius: BorderRadius.circular(9.12.r),
              border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Image.asset(
              icon,
              scale: 4,
            ),
          ),

          SizedBox(
            width: 189.29824829101562.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.96.sp,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Color(0xFF4B5563),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.68.sp,
                  ),
                )
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF9CA3AF),
            size: 18.sp,
          )
        ],
      ),
    );
  }
}
