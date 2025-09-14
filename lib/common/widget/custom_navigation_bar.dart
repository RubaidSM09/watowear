import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/dashboard/controllers/dashboard_controller.dart';

import '../custom_colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();

    final List<Map<String, String>> navItems = [
      {
        'label': 'Home',
        'icon': 'assets/images/bottom_navigation_bar/home.svg',
      },
      {
        'label': 'Closet',
        'icon': 'assets/images/bottom_navigation_bar/closet.svg',
      },
      {
        'label': 'Generate',
        'icon': 'assets/images/bottom_navigation_bar/generate.svg',
      },
      {
        'label': 'Missions',
        'icon': 'assets/images/bottom_navigation_bar/missions.svg',
      },
      {
        'label': 'Profile',
        'icon': 'assets/images/bottom_navigation_bar/profile.svg',
      },
    ];

    return SafeArea(
      child: Container(
        height: 102.5.h, // Set the desired height
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 37.23.w, vertical: 13.12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(navItems.length, (index) {
            final item = navItems[index];
            return GestureDetector(
              onTap: () => controller.updateIndex(index),
              child: Obx(() {
                final isSelected = index == controller.currentIndex.value;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOut,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    // Light pill behind the active item
                    gradient: isSelected
                        ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        WTWColor.primary.withAlpha(64),
                        WTWColor.primary.withAlpha(64),
                      ],
                    )
                        : null,
                    color: isSelected ? const Color(0xFFEAF2FF) : Colors.transparent,
                    border: isSelected
                        ? Border.all(color: WTWColor.primary.withOpacity(0.15))
                        : null,
                    boxShadow: isSelected
                        ? [
                      BoxShadow(
                        color: const Color(0xFF3B82F6).withOpacity(0.18),
                        blurRadius: 12.r,
                        offset: Offset(0, 6.h),
                      ),
                    ]
                        : [],
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200), // Smooth transition duration
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          item['icon']!,
                          key: ValueKey('${item['label']}_$isSelected'),
                        ),
                        SizedBox(height: 12.h,),
                        item['label'] != '' ?
                        Text(
                          item['label']!,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.black
                          ),
                        ) : SizedBox.shrink(),
                      ],
                    ),
                  ),
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}
