import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class EditOutfitView extends GetView {
  const EditOutfitView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Edit Outfit'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 24.4.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Outfit Overview',
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
                    OutfitOverviewCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                    OutfitOverviewCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                    OutfitOverviewCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),
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
                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),

                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/top.jpg',),
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
                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),

                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/middle.jpg',),
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
                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),

                    TopMiddleBottomSectionCard(image: 'assets/images/home/outfit_details/edit_outfit/bottom.jpg',),
                  ],
                ),
              ),

              SizedBox(height: 36.h,),

              WTWPrimaryButton(
                text: 'Save Outfit',
                onTap: () {  },
              ),

              SizedBox(height: 72.h,),
            ],
          ),
        ),
      ),
    );
  }
}

class OutfitOverviewCard extends StatelessWidget {
  final String image;

  const OutfitOverviewCard({
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
        padding: EdgeInsets.only(left: 102.w, top: 7.h, bottom: 121.h, right: 8.w),
        child: Image.asset(
          'assets/images/home/outfit_details/edit_outfit/close.png',
          scale: 4,
        ),
      ),
    );
  }
}

class TopMiddleBottomSectionCard extends StatelessWidget {
  final String image;

  const TopMiddleBottomSectionCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281.w,
      height: 180.h,
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
