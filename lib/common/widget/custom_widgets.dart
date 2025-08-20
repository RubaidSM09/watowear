import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/widget/custom_rows.dart';

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

        SizedBox(height: 12.h,),

        GenerateOutfitRow(
          image: 'assets/images/home/color_coordination.png',
          title: 'Color coordination',
        ),

        SizedBox(height: 12.h,),

        GenerateOutfitRow(
          image: 'assets/images/home/perfect_combinations.png',
          title: 'Perfect combinations',
        ),
      ],
    );
  }
}
