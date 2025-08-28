import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyClosetSection extends StatelessWidget {
  const MyClosetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Wrap(
        runSpacing: 20.h,
        alignment: WrapAlignment.spaceBetween,
        children: [
          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_1.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_2.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_3.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_4.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_5.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_6.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_7.png',
          ),

          MyClosetSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_8.png',
          ),
        ],
      ),
    );
  }
}

class MyClosetSectionCard extends StatelessWidget {
  final String image;

  const MyClosetSectionCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.5454559326172.w,
      height: 185.5454559326172.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF4F1EB),
          width: 1.18.r,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          scale: 4,
        ),
      ),
    );
  }
}
