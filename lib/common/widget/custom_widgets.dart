import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_rows.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';

class GenerateOutfitBottomRows extends StatelessWidget {
  const GenerateOutfitBottomRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenerateOutfitRow(
          image: 'assets/images/home/ai_powered_styling.png',
          title: 'AI-powered styling',
        ),

        SizedBox(height: 12.h),

        GenerateOutfitRow(
          image: 'assets/images/home/color_coordination.png',
          title: 'Color coordination',
        ),

        SizedBox(height: 12.h),

        GenerateOutfitRow(
          image: 'assets/images/home/perfect_combinations.png',
          title: 'Perfect combinations',
        ),
      ],
    );
  }
}

class AIGeneratedTagsSection extends StatelessWidget {
  const AIGeneratedTagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'AI Generated Tags',
              style: TextStyle(
                color: Color(0xFF3D3B38),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 19.61.sp,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/home/item_details/regenerate.png',
                  width: 15.251397132873535.w,
                  height: 15.251397132873535.h,
                  scale: 4,
                ),
                SizedBox(width: 6.538602867.w),
                Text(
                  'Regenerate',
                  style: TextStyle(
                    color: WTWColor.accent,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w500,
                    fontSize: 15.25.sp,
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 13.06720573.h),

        Text(
          'Category',
          style: TextStyle(
            color: Color(0xFF3D3B38).withAlpha(153),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w600,
            fontSize: 13.07.sp,
          ),
        ),
        SizedBox(height: 8.719831848.h),
        Wrap(
          spacing: 3.42.w,
          children: [
            Tags(text: 'Outerwear'),
            Tags(text: 'Jacket'),
          ],
        ),

        SizedBox(height: 13.06949554.h),

        Text(
          'Style',
          style: TextStyle(
            color: Color(0xFF3D3B38).withAlpha(153),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w600,
            fontSize: 13.07.sp,
          ),
        ),
        SizedBox(height: 8.719831848.h),
        Wrap(
          spacing: 3.42.w,
          children: [
            Tags(text: 'Casual'),
            Tags(text: 'Vintage'),
            Tags(text: 'Classic'),
          ],
        ),
      ],
    );
  }
}

class Tags extends StatelessWidget {
  final String text;

  const Tags({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: Color(0xFF3D3B38),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 17.43.sp,
            ),
          ),
          TextSpan(
            text: ' ×',
            style: TextStyle(
              color: WTWColor.accent.withAlpha(153),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 17.43.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTagsSection extends StatelessWidget {
  const CustomTagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Custom Tags',
              style: TextStyle(
                color: Color(0xFF3D3B38),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 19.61.sp,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/home/item_details/add.png',
                  width: 15.251397132873535.w,
                  height: 15.251397132873535.h,
                  scale: 4,
                ),
                SizedBox(width: 6.538602867.w),
                Text(
                  'Add Tag',
                  style: TextStyle(
                    color: WTWColor.accent,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w500,
                    fontSize: 15.25.sp,
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 13.06720573.h),
        Wrap(
          spacing: 3.42.w,
          children: [
            Tags(text: 'Favorite'),
            Tags(text: 'Versatile'),
          ],
        ),
      ],
    );
  }
}

class ItemStatisticsSection extends StatelessWidget {
  const ItemStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Item Statistics',
              style: TextStyle(
                color: Color(0xFF3D3B38),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 19.61.sp,
              ),
            ),
          ],
        ),

        SizedBox(height: 13.06720573.h),

        Container(
          padding: EdgeInsets.all(17.43.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.72.r),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemStatistics(
                    icon: 'assets/images/home/item_details/times_worn.png',
                    title: 'Times Worn',
                    stat: '12',
                  ),

                  SizedBox(height: 17.43.h),

                  ItemStatistics(
                    icon: 'assets/images/home/item_details/added.png',
                    title: 'Added',
                    stat: '2 weeks ago',
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemStatistics(
                    icon: 'assets/images/home/item_details/last_worn.png',
                    title: 'Last Worn',
                    stat: '3 days ago',
                  ),

                  SizedBox(height: 17.43.h),

                  ItemStatistics(
                    icon: 'assets/images/home/item_details/in_outfits.png',
                    title: 'In Outfits',
                    stat: '5',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemStatistics extends StatelessWidget {
  final String icon;
  final String title;
  final String stat;

  const ItemStatistics({
    required this.icon,
    required this.title,
    required this.stat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(icon, scale: 4),
        SizedBox(width: 15.25.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF3D3B38).withAlpha(204),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 15.25.sp,
              ),
            ),
            Text(
              stat,
              style: TextStyle(
                color: Color(0xFF3D3B38).withAlpha(204),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 17.43.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyClosetUpperSection extends StatelessWidget {
  final RxBool isGrid;

  const MyClosetUpperSection({
    required this.isGrid,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyClosetUpperSectionText(count: 42, type: 'Items'),
        MyClosetUpperSectionText(count: 8, type: 'Categories'),
        MyClosetUpperSectionText(count: 15, type: 'Outfits'),
        GridOrList(isGrid: isGrid,),
      ],
    );
  }
}

class GridOrList extends StatelessWidget {
  final RxBool isGrid;

  const GridOrList({
    required this.isGrid,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return isGrid.value ? Container(
        padding: EdgeInsets.all(4.4.w),
        decoration: BoxDecoration(
          color: Color(0xFFD8D8CF),
          borderRadius: BorderRadius.circular(8.79.r),
          border: Border.all(color: Color(0xFFE5E7EB)),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 13.19.w, vertical: 4.4.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.59.r),
                border: Border.all(color: Color(0xFFE5E7EB)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(13),
                    blurRadius: 2.2.r,
                    offset: Offset(0.w, 1.1.h),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.grid_view_sharp, size: 13.462239265441895.sp),
                  SizedBox(width: 8.787760735.w),
                  Text(
                    'Grid',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.39.sp,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                isGrid.value = false;
              },
              child: SizedBox(
                width: 41.76041793823242.w,
                child: Center(
                    child: Icon(Icons.list, size: 15.385416984558105.sp)),
              ),
            ),
          ],
        ),
      ) :
      Container(
        padding: EdgeInsets.all(4.4.w),
        decoration: BoxDecoration(
          color: Color(0xFFD8D8CF),
          borderRadius: BorderRadius.circular(8.79.r),
          border: Border.all(color: Color(0xFFE5E7EB)),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                isGrid.value = true;
              },
              child: SizedBox(
                width: 41.76041793823242.w,
                child: Center(
                    child: Icon(Icons.grid_view_sharp, size: 15.385416984558105.sp)),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 13.19.w, vertical: 4.4.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.59.r),
                border: Border.all(color: Color(0xFFE5E7EB)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(13),
                    blurRadius: 2.2.r,
                    offset: Offset(0.w, 1.1.h),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.list, size: 13.462239265441895.sp),
                  SizedBox(width: 8.787760735.w),
                  Text(
                    'List',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.39.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ProfileUpperSection extends StatelessWidget {
  const ProfileUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 275.3947448730469.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.12.r),
        gradient: LinearGradient(
          colors: [Color(0xFF6A6D57), Color(0xFF5A5D4A)],
        ),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),

      child: Stack(
        children: [
          Positioned(
            top: -72.98.h,
            left: 317.02.w,
            child: Container(
              width: 145.96490478515625.w,
              height: 145.96490478515625.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withAlpha(26),
              ),
            ),
          ),

          Positioned(
            top: 220.66.h,
            left: -54.74.w,
            child: Container(
              width: 109.47368621826172.w,
              height: 109.47368621826172.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withAlpha(13),
              ),
            ),
          ),

          Positioned(
            top: 27.37.h,
            left: 27.37.w,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 91.22806549072266.w,
                      height: 91.22806549072266.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11402.37.r),
                        border: Border.all(
                          color: Colors.white.withAlpha(51),
                          width: 4.56.sp,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11402.37.r),
                        child: Image.asset(
                          'assets/images/profile/profile_pic.jpg',
                          scale: 4,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 68.42.h,
                      left: 68.42.w,
                      child: Container(
                        padding: EdgeInsets.all(7.7.w),
                        decoration: BoxDecoration(
                          color: Color(0xFF4ADE80),
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Image.asset(
                          'assets/images/profile/verified.png',
                          width: 11.975021362304688.w,
                          height: 8.55396842956543.h,
                          scale: 4,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 18.24.w),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emma Johnson',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 22.81.sp,
                      ),
                    ),

                    SizedBox(height: 4.49.h),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.82.w,
                        vertical: 5.7.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11402.37.r),
                        border: Border.all(color: Colors.white.withAlpha(77)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withAlpha(51),
                            Colors.white.withAlpha(26),
                          ],
                        ),
                      ),

                      child: SizedBox(
                        width: 192.72.w,
                        child: Text(
                          'Casual, Minimal • Based on your wardrobe',
                          style: TextStyle(
                            color: Colors.white.withAlpha(230),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.68.sp,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 14.825.h),

                    Row(
                      children: [
                        SizedBox(width: 13.68.w),
                        Text(
                          'Style Explorer',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.54.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 167.06.h,
            left: 27.37.w,
            child: Container(
              width: 335.2631530761719.w,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.white.withAlpha(51),
                    width: 1.14.h,
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 19.39.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Style Level',
                        style: TextStyle(
                          color: Colors.white.withAlpha(204),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),

                      Text(
                        'Level 7',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.96.sp,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 9.122983627.h),

                  Stack(
                    children: [
                      Container(
                        width: 335.2631530761719.w,
                        height: 6.842105388641357.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.42.r),
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                      ),

                      Container(
                        width: 227.96327209472656.w,
                        height: 6.842105388641357.h,
                        decoration: BoxDecoration(
                          color: Color(0xFFBB5C13),
                          borderRadius: BorderRadius.circular(3.42.r),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 4.557894611.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '320 XP to Level 8',
                        style: TextStyle(
                          color: Colors.white.withAlpha(153),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.68.sp,
                        ),
                      ),

                      Image.asset(
                        'assets/images/profile/info.png',
                        scale: 4,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileEarnNewBadgeSection extends StatelessWidget {
  const ProfileEarnNewBadgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      padding: EdgeInsets.all(14.82.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.12.r),
        gradient: LinearGradient(
          colors: [
            Color(0xFFE3F2FD),
            Color(0xFFF3E5F5),
          ],
        ),
        border: Border.all(
          color: Color(0xFF2196F3).withAlpha(51),
          width: 1.14.sp,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(9.27.w),
            decoration: BoxDecoration(
              color: Color(0xFFDBEAFE),
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFE5E7EB),
              )
            ),
            child: Image.asset(
              'assets/images/profile/badge_star.png',
              scale: 4,
            ),
          ),

          SizedBox(
            width: 280.52630615234375.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload 5 more items to earn a new badge!',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.96.sp,
                  ),
                ),
                Text(
                  'Style Collector achievement waiting',
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.68.sp,
                  ),
                )
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward,
            color: WTWColor.accent,
            size: 20.sp,
          )
        ],
      ),
    );
  }
}
