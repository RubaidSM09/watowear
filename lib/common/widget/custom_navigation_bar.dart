import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/dashboard/controllers/dashboard_controller.dart';

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

    return Container(
      height: 106.05128479003906.h, // Set the desired height
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 37.23.w, vertical: 23.12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(navItems.length, (index) {
          final item = navItems[index];
          return GestureDetector(
            onTap: () => controller.updateIndex(index),
            child: Obx(() {
              final isSelected = index == controller.currentIndex.value;
              return AnimatedSwitcher(
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
              );
            }),
          );
        }),
      ),
    );
  }
}
