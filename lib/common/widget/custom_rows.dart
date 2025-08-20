import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenerateOutfitRow extends StatelessWidget {
  final String image;
  final String title;

  const GenerateOutfitRow({
    required this.image,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 16.w,
          height: 16.h,
          scale: 4,
        ),
        SizedBox(width: 8.w,),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF9CA3AF),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
