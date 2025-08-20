import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class OutfitDetailsView extends GetView {
  const OutfitDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'Causal Friday'),
                Image.asset(
                  'assets/images/home/outfit_details/favourite.png',
                  width: 17.5.w,
                  height: 20.h,
                  scale: 4,
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

              SizedBox(height: 26.5.h,),

              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  'assets/images/home/outfit_details/casual_friday.png',
                  width: 390.w,
                  height: 498.5795593261719.h,
                  fit: BoxFit.cover,
                  scale: 4,
                ),
              ),

              SizedBox(height: 20.42.h,),

              OutfitSuggestionsText(
                alignment: TextAlign.left,
                text: 'A perfect blend of smart and casual. This look is ideal for a relaxed office day or a weekend brunch with friends.',
              ),

              SizedBox(height: 25.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 13.3.w, vertical: 4.43.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11078.44.r),
                      border: Border.all(
                        color: Color(0xFFE5E7EB)
                      )
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/home/outfit_details/items.png',
                          width: 16.61931800842285.w,
                          height: 17.727272033691406.h,
                          scale: 4,
                        ),
                        SizedBox(width: 8.86.w,),
                        Text(
                          '3 Items',
                          style: TextStyle(
                            color: Color(0xFF2C2C2C),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.3.sp,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),

                  Text(
                    'Blazer + T-Shirt + Jeans',
                    style: TextStyle(
                      color: Color(0xFF4A4A4A),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.3.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Icon(
                    Icons.star_rounded,
                    color: Color(0xFFEAB308),
                    size: 16.sp,
                  ),

                  Text(
                    '4.8',
                    style: TextStyle(
                      color: Color(0xFF2C2C2C),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.51.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    '(+25 XP)',
                    style: TextStyle(
                      color: Color(0xFF4A4A4A),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.3.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(height: 25.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8.863636016845703.w,
                    height: 8.863636016845703.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2C2C2C)
                    ),
                  ),
                  SizedBox(width: 8.87.w,),
                  Container(
                    width: 8.863636016845703.w,
                    height: 8.863636016845703.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF2C2C2C).withAlpha(77)
                    ),
                  ),
                  SizedBox(width: 8.87.w,),
                  Container(
                    width: 8.863636016845703.w,
                    height: 8.863636016845703.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF2C2C2C).withAlpha(77)
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40.14.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WTWPrimaryButton(
                    text: 'Save Outfit',
                    icon: 'assets/images/home/outfit_details/save_outfit.png',
                    width: 296,
                    onTap: () {  },
                  ),

                  GestureDetector(
                    onTap: () {  },
                    child: Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: WTWColor.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/home/outfit_details/upload.png',
                            width: 16.w,
                            height: 16.h,
                            scale: 4,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 16.h,),

              WTWSecondaryButton(
                text: 'Edit',
                icon: 'assets/images/home/outfit_details/edit.png',
                width: 360,
                onTap: () {  },
              ),

              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),
    );
  }
}
