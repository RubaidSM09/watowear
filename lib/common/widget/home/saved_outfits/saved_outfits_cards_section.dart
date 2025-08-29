import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:watowear_chole/app/modules/home/views/saved_outfit_details_view.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class SavedOutfitsCardsSection extends StatelessWidget {
  const SavedOutfitsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '124 items found',
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 15.8.sp,
              ),
            ),
            Text(
              'Last saved 2 days ago',
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 15.8.sp,
              ),
            ),
          ],
        ),

        SizedBox(height: 18.05589783.h),

        Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: SavedOutfitCard(
                      image:
                          'assets/images/home/saved_outfit/business_casual.png',
                      name: 'Business Casual',
                      categories: ['Work', 'Smart'],
                      wornCount: 3,
                      itemCount: 5,
                    ),
                  ),
                  Flexible(
                    child: SavedOutfitCard(
                      image:
                          'assets/images/home/saved_outfit/weekend_comfort.png',
                      name: 'Weekend Comfort',
                      categories: ['Casual', 'Cozy'],
                      wornCount: 7,
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.05154785.h),

            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: SavedOutfitCard(
                      image:
                          'assets/images/home/saved_outfit/date_night_glam.png',
                      name: 'Date Night Glam',
                      categories: ['Date', 'Elegant'],
                      wornCount: 2,
                      itemCount: 6,
                    ),
                  ),
                  Flexible(
                    child: SavedOutfitCard(
                      image: 'assets/images/home/saved_outfit/summer_party.png',
                      name: 'Summer Party',
                      categories: ['Party', 'Bright'],
                      wornCount: 0,
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.05154785.h),

            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: SavedOutfitCard(
                      image:
                      'assets/images/home/saved_outfit/executive_look.png',
                      name: 'Executive Look',
                      categories: ['Formal', 'Power'],
                      wornCount: 1,
                      itemCount: 4,
                    ),
                  ),
                  Flexible(
                    child: SavedOutfitCard(
                      image: 'assets/images/home/saved_outfit/athleisure_chic.png',
                      name: 'Athleisure Chic',
                      categories: ['Casual', 'Sport'],
                      wornCount: 5,
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 29.85049561.h),
      ],
    );
  }
}

class SavedOutfitCard extends StatelessWidget {
  final String image;
  final String name;
  final List<String> categories;
  final int wornCount;
  final int itemCount;

  const SavedOutfitCard({
    required this.image,
    required this.name,
    required this.categories,
    required this.wornCount,
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(SavedOutfitDetailsView()),
      child: Container(
        width: 189.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.54.r),
          color: Colors.white,
          border: Border.all(color: Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 13.54.r,
              offset: Offset(0.w, 2.26.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13.54.r),
                    topRight: Radius.circular(13.54.r),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    // width: double.infinity,
                    // height: 144.41026306152344.h,
                    scale: 4,
                  ),
                ),

                Positioned(
                  top: 13.54.h,
                  left: 13.54.w,
                  child: Container(
                    padding: EdgeInsets.all(10.16.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(230),
                      // border: Border.all(color: Color(0xFFE5E7EB)),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xFF4B5563),
                      size: 22.57309913635254.sp,
                    ),
                  ),
                ),

                Positioned(
                  top: 13.54.h,
                  left: 134.31.w,
                  child: Container(
                    padding: EdgeInsets.all(10.16.w),
                    decoration: BoxDecoration(
                      color: WTWColor.accent,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15.801169395446777.sp,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(18.06.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.06.sp,
                    ),
                  ),

                  SizedBox(height: 4.511795654.h),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 4.511091309.w,
                      children: categories.map((category) {
                        return SavedOutfitType(text: category);
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 9.026666031.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$itemCount items',
                        style: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.54.sp,
                        ),
                      ),

                      Text(
                        wornCount!=0 ? 'Worn $wornCount times' : 'Never worn',
                        style: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.54.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedOutfitType extends StatelessWidget {
  final String text;

  const SavedOutfitType({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.15.w, vertical: 6.77.h),
      decoration: BoxDecoration(
        color: Color(0xFFF4F1EB),
        borderRadius: BorderRadius.circular(18.06.r),
        border: Border.all(color: WTWColor.secondary_bg, width: 1.13.sp),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.primary,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 13.54.sp,
        ),
      ),
    );
  }
}
