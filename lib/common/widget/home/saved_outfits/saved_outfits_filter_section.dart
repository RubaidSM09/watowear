import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_colors.dart';

class SavedOutfitsFilterSection extends StatelessWidget {
  const SavedOutfitsFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.54.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: WTWColor.secondary_bg.withAlpha(77),
            width: 1.13.sp,
          )
        )
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SavedOutfitsFilter(text: 'All', isSelected: true,),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Tops',),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Bottoms',),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Dresses',),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Outerwear',),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Shoes',),

            SizedBox(width: 9.026795654.w,),

            SavedOutfitsFilter(text: 'Accessories',),

            SizedBox(height: 18.04230652.h,),

            
          ],
        ),
      ),
    );
  }
}

class SavedOutfitsFilter extends StatelessWidget {
  final String text;
  final bool isSelected;

  const SavedOutfitsFilter({
    required this.text,
    this.isSelected = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.67.w, vertical: 10.15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.05.r),
          color: isSelected ? WTWColor.primary : Colors.white,
          border: Border.all(
            color: isSelected ? WTWColor.primary : WTWColor.secondary_bg,
            width: 1.13.sp,
          )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : WTWColor.text_icons,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
          fontSize: 13.54.sp,
        ),
      ),
    );
  }
}
