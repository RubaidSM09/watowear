import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_text.dart';
import 'edit_outfit_view.dart';

class WardrobeCarousalView extends GetView {
  const WardrobeCarousalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Wardrobe Carousal'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: WTWColor.secondary_bg,),

                SizedBox(height: 24.4.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recently Used Section',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox.shrink()
                  ],
                ),

                SizedBox(height: 9.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.w,
                    children: [
                      RecentlyUsedSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                      RecentlyUsedSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                      RecentlyUsedSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),
                    ],
                  ),
                ),

                SizedBox(height: 30.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Selection',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox.shrink()
                  ],
                ),

                SizedBox(height: 12.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.w,
                    children: [
                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),
                    ],
                  ),
                ),

                SizedBox(height: 25.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Middle Selection',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox.shrink()
                  ],
                ),

                SizedBox(height: 12.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.w,
                    children: [
                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),
                    ],
                  ),
                ),

                SizedBox(height: 25.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bottom Selection',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox.shrink()
                  ],
                ),

                SizedBox(height: 12.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.w,
                    children: [
                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),
                    ],
                  ),
                ),

                SizedBox(height: 25.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Accessories Selection',
                      style: TextStyle(
                        color: WTWColor.text_icons,
                        fontFamily: 'Comfortaa',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox.shrink()
                  ],
                ),

                SizedBox(height: 12.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12.w,
                    children: [
                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/accessories.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/accessories.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/accessories.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/accessories.jpg',),

                      TopMiddleBottomAccessoriesSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/accessories.jpg',),
                    ],
                  ),
                ),

                SizedBox(height: 72.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecentlyUsedSectionCard extends StatelessWidget {
  final String image;

  const RecentlyUsedSectionCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              scale: 4,
              fit: BoxFit.cover
          )
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 65.w, top: 4.h, bottom: 68.h, right: 7.w),
        child: Image.asset(
          'assets/images/home/outfit_details/edit_outfit/close.png',
          scale: 4,
        ),
      ),
    );
  }
}


class TopMiddleBottomAccessoriesSectionCard extends StatelessWidget {
  final String image;

  const TopMiddleBottomAccessoriesSectionCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
          color: Color(0xFFA0A389),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(77),
              blurRadius: 6.r,
              offset: Offset(2.w, 3.h),
            )
          ]
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
