import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class SavedOutfitDetailsView extends GetView {
  const SavedOutfitDetailsView({super.key});
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
                WTWAppbarText(text: 'Outfit Details'),
                GestureDetector(
                  onTap: () {  },
                  child: Icon(
                    Icons.favorite,
                    size: 22.5.r,
                    color: Color(0xFFEF4444),
                  ),
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: WTWColor.secondary_bg,),

            SizedBox(height: 1.h,),

            SizedBox(
              width: 440.w,
              height: 433.23077392578125.h,
              child: Image.asset(
                'assets/images/home/saved_outfit/business_casual.png',
                scale: 4,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(25.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 9.5.h,
                        children: [
                          Text(
                            'Business Casual',
                            style: TextStyle(
                              color: WTWColor.text_icons,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 27.37.sp,
                            ),
                          ),

                          Row(
                            spacing: 12.w,
                            children: [
                              Image.asset(
                                'assets/images/home/saved_outfit/outfit_details/items.png',
                                scale: 4,
                              ),

                              Text(
                                '5 items',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.96.sp,
                                ),
                              ),

                              Image.asset(
                                'assets/images/home/saved_outfit/outfit_details/last_saved.png',
                                scale: 4,
                              ),

                              Text(
                                'Saved 2 days ago',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.96.sp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: 12.h,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 7.h),
                            decoration: BoxDecoration(
                              color: WTWColor.accent,
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(color: Color(0xFFE5E7EB)),
                            ),
                            child: Text(
                              'Worn 3 times',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.4.sp,
                              ),
                            ),
                          ),

                          Text(
                            'Last 1 week ago',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 20.5.h,),

                  Wrap(
                    spacing: 11.w,
                    runSpacing: 11.h,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.12.h),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F1EB),
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Text(
                          'Work',
                          style: TextStyle(
                            color: WTWColor.primary,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.68.sp,
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.12.h),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F1EB),
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Text(
                          'Smart',
                          style: TextStyle(
                            color: WTWColor.primary,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.68.sp,
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.12.h),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F1EB),
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Text(
                          'Professional',
                          style: TextStyle(
                            color: WTWColor.primary,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.68.sp,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h,),

                  Row(
                    spacing: 9.12.h,
                    children: [
                      Image.asset(
                        'assets/images/home/saved_outfit/outfit_details/outfit_items.png',
                        scale: 4,
                      ),

                      Text(
                        'Outfit Items',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 19.63.h,),

                  SizedBox(
                    width: 390.w,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runSpacing: 15.51.h,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.12.r),
                            color: Colors.white,
                            border: Border.all(color: WTWColor.secondary_bg,),
                          ),
                          child: Column(
                            spacing: 12.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4.r),
                                child: Image.asset(
                                  'assets/images/home/saved_outfit/outfit_details/outfit_items_1.png',
                                  width: 158.w,
                                  height: 113.h,
                                  fit: BoxFit.cover,
                                  scale: 4,
                                ),
                              ),

                              SizedBox(
                                width: 158.17544555664062.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Navy Blazer',
                                      style: TextStyle(
                                        color: WTWColor.text_icons,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),

                                    Text(
                                      'Zara',
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.12.r),
                            color: Colors.white,
                            border: Border.all(color: WTWColor.secondary_bg,),
                          ),
                          child: Column(
                            spacing: 12.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4.r),
                                child: Image.asset(
                                  'assets/images/home/saved_outfit/outfit_details/outfit_items_2.png',
                                  width: 158.w,
                                  height: 113.h,
                                  fit: BoxFit.cover,
                                  scale: 4,
                                ),
                              ),

                              SizedBox(
                                width: 158.17544555664062.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'White Shirt',
                                      style: TextStyle(
                                        color: WTWColor.text_icons,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),

                                    Text(
                                      'H&M',
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.12.r),
                            color: Colors.white,
                            border: Border.all(color: WTWColor.secondary_bg,),
                          ),
                          child: Column(
                            spacing: 12.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4.r),
                                child: Image.asset(
                                  'assets/images/home/saved_outfit/outfit_details/outfit_items_3.jpg',
                                  width: 158.w,
                                  height: 113.h,
                                  fit: BoxFit.cover,
                                  scale: 4,
                                ),
                              ),

                              SizedBox(
                                width: 158.17544555664062.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Trousers',
                                      style: TextStyle(
                                        color: WTWColor.text_icons,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),

                                    Text(
                                      'Mango',
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.12.r),
                            color: Colors.white,
                            border: Border.all(color: WTWColor.secondary_bg,),
                          ),
                          child: Column(
                            spacing: 12.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4.r),
                                child: Image.asset(
                                  'assets/images/home/saved_outfit/outfit_details/outfit_items_4.jpg',
                                  width: 158.w,
                                  height: 113.h,
                                  fit: BoxFit.cover,
                                  scale: 4,
                                ),
                              ),

                              SizedBox(
                                width: 158.17544555664062.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Black Shoes',
                                      style: TextStyle(
                                        color: WTWColor.text_icons,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),

                                    Text(
                                      'Clarks',
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.68.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.5.h,),

                  Row(
                    spacing: 9.12.h,
                    children: [
                      Image.asset(
                        'assets/images/home/saved_outfit/outfit_details/notes.png',
                        scale: 4,
                      ),

                      Text(
                        'Notes',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 11.63.h,),

                  Container(
                    padding: EdgeInsets.all(19.39.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9.12.r),
                      border: Border.all(
                        color: WTWColor.secondary_bg,
                        width: 1.14.r,
                      ),
                    ),
                    child: Text(
                      'Perfect for client meetings and office presentations. The navy blazer adds authority while keeping it approachable. Works great with brown leather accessories too.',
                      style: TextStyle(
                        color: Color(0xFF374151),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.96.sp,
                      ),
                    ),
                  ),

                  SizedBox(height: 20.5.h,),

                  Row(
                    spacing: 9.12.h,
                    children: [
                      Image.asset(
                        'assets/images/home/saved_outfit/outfit_details/wear_history.png',
                        scale: 4,
                      ),

                      Text(
                        'Wear History',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.25.sp,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 11.63.h,),

                  Column(
                    spacing: 15.h,
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.82.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.12.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Board Meeting',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),

                                Text(
                                  'Jan 15, 2024',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              'Great fit',
                              style: TextStyle(
                                color: WTWColor.accent,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.68.sp,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(14.82.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.12.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Client Presentation',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),

                                Text(
                                  'Jan 8, 2024',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              'Confident',
                              style: TextStyle(
                                color: WTWColor.accent,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.68.sp,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(14.82.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.12.r),
                          border: Border.all(
                            color: WTWColor.secondary_bg,
                            width: 1.14.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Office Party',
                                  style: TextStyle(
                                    color: WTWColor.text_icons,
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.96.sp,
                                  ),
                                ),

                                Text(
                                  'Dec 20, 2023',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.68.sp,
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              'Professional',
                              style: TextStyle(
                                color: WTWColor.accent,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.68.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.8949.h,),

                  Center(
                    child: WTWPrimaryButton(
                      text: 'Recreate Outfit',
                      icon: 'assets/images/home/saved_outfit/outfit_details/recreate_outfit.png',
                      width: 360.w,
                      onTap: () {  },
                    ),
                  ),

                  SizedBox(height: 16.h,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WTWSecondaryButton(
                          text: 'Edit',
                          icon: 'assets/images/home/saved_outfit/outfit_details/edit.png',
                          paddingWidth: 16.w,
                          width: 112.w,
                          onTap: () {  },
                        ),

                        WTWSecondaryButton(
                          text: 'Share',
                          icon: 'assets/images/home/saved_outfit/outfit_details/share.png',
                          paddingWidth: 16.w,
                          width: 112.w,
                          onTap: () {  },
                        ),

                        WTWDeleteButton(
                          text: 'Delete',
                          icon: 'assets/images/home/saved_outfit/outfit_details/delete.png',
                          paddingWidth: 16.w,
                          width: 112.w,
                          onTap: () {  },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
