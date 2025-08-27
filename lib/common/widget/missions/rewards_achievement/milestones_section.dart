import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class MilestonesSection extends StatelessWidget {
  const MilestonesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Milestones',
              style: TextStyle(
                color: Color(0xFF2F2E2D),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 19.61.sp,
              ),
            ),
          ],
        ),

        SizedBox(height: 17.h),

        MilestonesCard(
          title: 'Digital Wardrobe Growth',
          subtitle: 'Add 100 items to your wardrobe.',
          total: 100,
          current: 75,
        ),

        SizedBox(height: 17.43267517.h,),

        MilestonesCard(
          title: 'Outfit Creator',
          subtitle: 'Create 50 unique outfits.',
          total: 50,
          current: 30,
        ),
      ],
    );
  }
}

class MilestonesCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int total;
  final int current;

  const MilestonesCard({
    required this.title,
    required this.subtitle,
    required this.total,
    required this.current,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.52.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.07.r),
          border: Border.all(
            color: Color(0xFFEAE8E3),
            width: 1.09.sp,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF2F2E2D),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  fontSize: 17.43.sp,
                ),
              ),
              Text(
                '$current/$total',
                style: TextStyle(
                  color: Color(0xFF6B7261),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.25.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 4.354747772.h,),

          Text(
            subtitle,
            style: TextStyle(
              color: Color(0xFFA7A39B),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 15.25.sp,
            ),
          ),

          SizedBox(height: 13.07228981.h,),

          Stack(
            children: [
              Container(
                width: 352.9609069824219.w,
                height: 8.715084075927734.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10892.77.r),
                  color: Color(0XFFEAE8E3),
                  border: Border.all(color: Color(0xFFE5E7EB)),
                ),
              ),
              Container(
                width: ((352.9609069824219*current)/total).w,
                height: 8.715084075927734.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10892.77.r),
                  color: WTWColor.primary,
                  border: Border.all(color: Color(0xFFE5E7EB)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
