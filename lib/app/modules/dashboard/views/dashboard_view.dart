import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/closet_view.dart';
import 'package:watowear_chole/app/modules/generate/views/generate_view.dart';
import 'package:watowear_chole/app/modules/missions/views/missions_view.dart';
import 'package:watowear_chole/app/modules/profile/views/profile_view.dart';

import '../../../../common/widget/custom_navigation_bar.dart';
import '../../home/views/home_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());

    final List<Widget> pages = [
      HomeView(),
      ClosetView(),
      GenerateView(),
      MissionsView(),
      ProfileView(),
    ];

    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),

      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
