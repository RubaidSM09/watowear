import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickScanImageSection extends StatelessWidget {
  const QuickScanImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 390.w,
          height: 547.368408203125.h,
          child: Image.asset(
            'assets/images/closet/my_closet/quick_scan/quick_scan_image.png',
            fit: BoxFit.cover,
            scale: 4,
          ),
        ),

        Positioned(
          top: 404.3.h,
          left: 24.w,
          child: Container(
            width: 342.w,
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12.r),
              // border: Border.all(color: Color(0xFFE5E7EB)),
            ),
            child: Column(
              children: [
                Text(
                  'Position items in the zones',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),

                Text(
                  'Lay items flat and ensure they don\'t overlap. The AI will detect when items are ready to capture.',
                  style: TextStyle(
                    color: Colors.white.withAlpha(204),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
