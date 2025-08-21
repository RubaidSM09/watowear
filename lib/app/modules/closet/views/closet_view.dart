import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_cards.dart';
import 'package:watowear_chole/common/widget/custom_widgets.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/closet_controller.dart';

class ClosetView extends GetView<ClosetController> {
  const ClosetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        leading: Image.asset(
          'assets/images/home/menu.png',
          width: 17.5.w,
          height: 15.h,
          scale: 4,
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'My Closet'),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/closet/search_closet.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                    SizedBox(width: 16.w,),
                    Image.asset(
                      'assets/images/home/filter.png',
                      width: 17.5.w,
                      height: 20.h,
                      scale: 4,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, /*top: 53.h*/),
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg,),

              SizedBox(height: 18.01.h,),

              MyClosetUpperSection(),

              SizedBox(height: 18.01.h,),

              Divider(color: Color(0xFFE5E7EB),),

              SizedBox(height: 18.63.h,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterCard(text: 'All', isSelected: true,),
                    SizedBox(width: 8.799.w,),
                    FilterCard(text: 'Tops', isSelected: false,),
                    SizedBox(width: 8.799.w,),
                    FilterCard(text: 'Bottoms', isSelected: false,),
                    SizedBox(width: 8.799.w,),
                    FilterCard(text: 'Dresses', isSelected: false,),
                    SizedBox(width: 8.799.w,),
                    FilterCard(text: 'Shoes', isSelected: false,),
                  ],
                ),
              ),

              SizedBox(height: 25.8075.h,),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutfitCardsWitRating(
                        image: 'assets/images/home/outfit_suggestions/board_meeting.png',
                        title: 'Board Meeting',
                        description: 'Professional and polished',
                        rating: 4.9,
                        itemCount: 4,
                      ),
                      OutfitCardsWitRating(
                        image: 'assets/images/home/outfit_suggestions/street_style.png',
                        title: 'Street Style',
                        description: 'Urban and trendy',
                        rating: 4.7,
                        itemCount: 5,
                      ),
                    ],
                  ),

                  SizedBox(height: 17.73.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutfitCardsWitRating(
                        image: 'assets/images/home/outfit_suggestions/cozy_winter.png',
                        title: 'Cozy Winter',
                        description: 'Warm and comfortable',
                        rating: 4.9,
                        itemCount: 4,
                      ),
                      OutfitCardsWitRating(
                        image: 'assets/images/home/outfit_suggestions/night_out.png',
                        title: 'Night Out',
                        description: 'Perfect for dinner dates',
                        rating: 4.7,
                        itemCount: 5,
                      ),
                    ],
                  ),

                  SizedBox(height: 25.h,),
                ],
              )
            ],
          ),
        ),
      ),

      floatingActionButton: GestureDetector(
        onTap: () {  },
        child: Container(
          padding: EdgeInsets.all(21.5.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: WTWColor.primary
          ),
          child: Image.asset(
            'assets/images/home/item_details/add.png',
            color: Colors.white,
            scale: 4,
          ),
        ),
      ),
    );
  }
}
