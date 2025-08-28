import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../custom_colors.dart';
import '../../../custom_buttons.dart';

class ReviewCropsCardSection extends StatelessWidget {
  const ReviewCropsCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 16.w,
        children: [
          ReviewCropsCard(
            image: 'assets/images/closet/my_closet/my_closet_1.png',
            name: 'White Silk Blouse',
            aiConfidence: 94,
          ),

          ReviewCropsCard(
            image: 'assets/images/closet/my_closet/my_closet_2.png',
            name: 'Blue Denim Jeans',
            aiConfidence: 89,
          ),

          ReviewCropsCard(
            image: 'assets/images/closet/my_closet/my_closet_3.png',
            name: 'Black Leather Jacket',
            aiConfidence: 96,
          ),

          ReviewCropsCard(
            image: 'assets/images/closet/my_closet/my_closet_4.png',
            name: 'Red Summer Dress',
            aiConfidence: 91,
          ),

          ReviewCropsCard(
            image: 'assets/images/closet/my_closet/my_closet_5.png',
            name: 'White Sneakers',
            aiConfidence: 87,
          ),
        ],
      ),
    );
  }
}

class ReviewCropsCard extends StatelessWidget {
  final String image;
  final String name;
  final double aiConfidence;

  const ReviewCropsCard({
    required this.image,
    required this.name,
    required this.aiConfidence,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: WTWColor.text_icons.withAlpha(26),
            blurRadius: 16.r,
            offset: Offset(0.w, 4.h),
          )
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r),),
                child: Image.asset(
                  image,
                  width: 280.w,
                  height: 320.h,
                  fit: BoxFit.cover,
                  scale: 4,
                ),
              ),

              Positioned(
                top: 32.h,
                left: 42.w,
                child: Container(
                  width: 196.w,
                  height: 240.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: WTWColor.primary.withAlpha(26),
                      border: Border.all(
                        color: WTWColor.primary,
                        width: 2.r,
                      )
                  ),
                ),
              )
            ],
          ),

          Container(
            width: 280.w,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: WTWColor.secondary_bg,
                  ),
                )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),

                  SizedBox(height: 5.h,),

                  Text(
                    'AI Confidence: $aiConfidence%',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),

                  SizedBox(height: 12.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WTWPrimaryButton(
                        text: 'Accept',
                        icon: 'assets/images/closet/my_closet/review_crops/accept.png',
                        width: 117.w,
                        height: 47.h,
                        paddingWidth: 21.13.w,
                        paddingHeight: 16.h,
                        textSize: 14,
                        onTap: () {  },
                      ),

                      WTWRejectButton(
                        text: 'Reject',
                        icon: 'assets/images/closet/my_closet/review_crops/reject.png',
                        width: 117.w,
                        height: 47.h,
                        paddingWidth: 21.13.w,
                        paddingHeight: 16.h,
                        textSize: 14,
                        onTap: () {  },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
