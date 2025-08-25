import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WTWSearchBar extends StatelessWidget {
  final String searchBarText;

  const WTWSearchBar({
    this.searchBarText = 'Search here',
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.92.w, vertical: 14.h),
      width: 385.8461608886719.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.03.r),
          border: Border.all(
            color: Color(0xFFCDCDC0),
            width: 1.13.sp,
          )
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/home/settings/search_setting.png',
            scale: 4,
          ),
          SizedBox(width: 16.72.w,),
          Text(
            searchBarText,
            style: TextStyle(
              color: Color(0xFFADAEBC),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 18.05.sp,
            ),
          )
        ],
      ),
    );
  }
}
