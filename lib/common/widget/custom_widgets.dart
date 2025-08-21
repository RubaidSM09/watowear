import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

        SizedBox(height: 13.06949554.h,),

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
            color: Colors.white
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

                  SizedBox(height: 17.43.h,),

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

                  SizedBox(height: 17.43.h,),

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
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          icon,
          scale: 4,
        ),
        SizedBox(width: 15.25.w,),
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
            )
          ],
        )
      ],
    );
  }
}

class MyClosetUpperSection extends StatelessWidget {

  const MyClosetUpperSection({
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
        GridOrList(),
      ],
    );
  }
}

class GridOrList extends StatelessWidget {
  const GridOrList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.4.w),
      decoration: BoxDecoration(
        color: Color(0xFFD8D8CF),
        borderRadius: BorderRadius.circular(8.79.r),
        border: Border.all(
          color: Color(0xFFE5E7EB),
        )
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.19.w, vertical: 4.4.h),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.59.r),
                border: Border.all(
                  color: Color(0xFFE5E7EB),
                ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(13),
                  blurRadius: 2.2.r,
                  offset: Offset(0.w, 1.1.h),
                )
              ]
            ),
            child: Row(
              children: [
                Icon(
                  Icons.grid_view_sharp,
                  size: 13.462239265441895.sp,
                ),
                SizedBox(width: 8.787760735.w,),
                Text(
                  'Grid',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.39.sp,
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            width: 41.76041793823242.w,
            child: Center(
              child: Icon(
                Icons.list,
                size: 15.385416984558105.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
