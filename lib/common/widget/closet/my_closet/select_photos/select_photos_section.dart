import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPhotosSection extends StatelessWidget {
  const SelectPhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_1.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_2.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_3.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_4.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_5.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_6.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_7.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/my_closet_8.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_9.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_10.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_11.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_12.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_13.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_14.png',
        ),

        SelectPhotosSectionCard(
          image: 'assets/images/closet/my_closet/select_photos/select_photos_15.png',
        ),
      ],
    );
  }
}

class SelectPhotosSectionCard extends StatelessWidget {
  final String image;
  
  const SelectPhotosSectionCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.15065002441406.w,
      height: 145.15065002441406.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF4F1EB),
          width: 1.18.r,
        ),
      ),
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          scale: 4,
        ),
      ),
    );
  }
}
