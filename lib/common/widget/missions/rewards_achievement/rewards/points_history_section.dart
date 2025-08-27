import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';

class PointsHistorySection extends StatelessWidget {
  final String time;
  final List<Map<String, dynamic>> pointsHistory;

  const PointsHistorySection({
    required this.time,
    required this.pointsHistory,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: TextStyle(
            color: Color(0xFF666666),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
          ),
        ),

        SizedBox(height: 17.5.h,),

        Column(
          children: pointsHistory.map((history) {
            return Padding(
              padding: EdgeInsets.only(bottom: 17.5.h),
              child: PointsHistoryCard(
                icon: history['icon'],
                title: history['title'],
                points: history['points'],
                time: history['time'],
                missionType: history['missionType'],
              ),
            );
          }).toList(),
        ),

        SizedBox(height: 17.5.h,),
      ],
    );
  }
}

class PointsHistoryCard extends StatelessWidget {
  final String icon;
  final String title;
  final int points;
  final String time;
  final String missionType;

  const PointsHistoryCard({
    required this.icon,
    required this.title,
    required this.points,
    required this.time,
    required this.missionType,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(19.39.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.68.r),
        border: Border.all(
          color: Color(0xFFF4F1EB),
          width: 1.14.r,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          points > 50 ? Container(
            padding: EdgeInsets.symmetric(horizontal: 11.4.w, vertical: 12.54.h,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.4.r),
              color: Color(0xFFF4F1EB),
              border: Border.all(
                color: WTWColor.primary,
                width: 2.28.r,
              ),
            ),
            child: Image.asset(
              icon,
              scale: 4,
            ),
          ) :
          Container(
            padding: EdgeInsets.symmetric(horizontal: 11.4.w, vertical: 12.54.h,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.4.r),
              gradient: LinearGradient(
                colors: [
                  WTWColor.primary,
                  WTWColor.accent,
                ],
              ),
              border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Image.asset(
              icon,
              scale: 4,
            ),
          ),

          SizedBox(
            width: 291.9298095703125.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '+$points pts',
                  style: TextStyle(
                    color: WTWColor.accent,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.25.sp,
                  ),
                ),

                SizedBox(height: 5.h,),

                Text(
                  title,
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.96.sp,
                  ),
                ),

                SizedBox(height: 5.h,),

                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.68.sp,
                      ),
                    ),

                    SizedBox(width: 10.w,),

                    Text(
                      '•',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.68.sp,
                      ),
                    ),

                    SizedBox(width: 10.w,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.84.w, vertical: 3.76.h),
                      decoration: BoxDecoration(
                        color: WTWColor.primary.withAlpha(26),
                        border: Border.all(color: Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(4.56.r),
                      ),
                      child: Text(
                        missionType,
                        style: TextStyle(
                          color: WTWColor.primary,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.68.sp,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
