import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadingItemsSection extends StatelessWidget {
  const UploadingItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Wrap(
        runSpacing: 20.h,
        alignment: WrapAlignment.spaceBetween,
        children: [
          UploadingItemsSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_1.png',
            opacity: 0.714,
          ),

          UploadingItemsSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_2.png',
            opacity: 0.6846,
          ),

          UploadingItemsSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_3.png',
            opacity: 0.6846,
          ),

          UploadingItemsSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_4.png',
            opacity: 0.8561,
          ),

          UploadingItemsSectionCard(
            image: 'assets/images/closet/my_closet/my_closet_5.png',
            opacity: 0.8666,
          ),
        ],
      ),
    );
  }
}

class UploadingItemsSectionCard extends StatelessWidget {
  final String image;
  final double opacity;
  
  const UploadingItemsSectionCard({
    required this.image,
    required this.opacity,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
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
      ),
    );
  }
}
