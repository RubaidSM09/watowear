import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                color: Color(0xFF4B5563),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 15.79.sp,
              ),
            ),
            Row(
              children: [
                Text(
                  'Recently Added',
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.79.sp,
                  ),
                ),
                SizedBox(width: 8.232817383.w,),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 20.sp,
                  color: WTWColor.text_icons,
                )
              ],
            )
          ],
        ),

        SizedBox(height: 18.05589783.h,),

        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SavedOutfitCard(
                  image: 'assets/images/home/saved_outfit/black_leather_jacket.png',
                  name: 'Black Leather Jacket',
                  categories: ['Outerwear', 'Black'],
                  wornCount: 3,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class SavedOutfitCard extends StatelessWidget {
  final String image;
  final String name;
  final List<String> categories;
  final int wornCount;

  const SavedOutfitCard({
    required this.image,
    required this.name,
    required this.categories,
    required this.wornCount,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183.89743041992188.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.03.r),
          color: Colors.white,
          border: Border.all(color: Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 2.26.r,
              offset: Offset(0.w, 1.13.h),
            )
          ]
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(9.03.r), topRight: Radius.circular(9.03.r),),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              scale: 4,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(13.54.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: WTWColor.text_icons,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.79.sp,
                  ),
                ),

                SizedBox(height: 4.511795654.h,),

                Wrap(
                  spacing: 4.511091309.w,
                  runSpacing: 4.511091309.w,
                  children: [
                    SavedOutfitType(text: 'Outerwear',),
                    SavedOutfitType(text: 'Black',),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SavedOutfitType extends StatelessWidget {
  final String text;

  const SavedOutfitType({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.15.w, vertical: 6.77.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.56.r),
          border: Border.all(
            color: WTWColor.secondary_bg,
            width: 1.13.sp,
          )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 13.54.sp,
        ),
      ),
    );
  }
}
