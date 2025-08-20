import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:get/get.dart';

class GenerateOutfitPic extends StatelessWidget {
  const GenerateOutfitPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
            color: WTWColor.primary,
              borderRadius: BorderRadius.circular(9999.r),
              border: Border.all(
                color: Color(0xFFE5E7EB),
                width: 0.sp,
              )
          ),
        ),

        Positioned(
          top: 8.h,
          child: Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9999.r),
            ),
            child: CircleAvatar(
              radius: 48.r,
              backgroundImage: AssetImage(
                'assets/images/home/generate_outfit_pic.jpg',
              ),
            ),
          ),
        ),

        Container(
          width: 70.35.w,
          height: 70.35.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9999.r),
            border: Border.all(
              color: WTWColor.primary,
              width: 4.sp,
            )
          ),
        ),
      ],
    );
  }
}

class WTWLoaderController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController _controller;

  // reactive scales for each dot
  final s1 = 15.41998351.obs;
  final s2 = 15.41998351.obs;
  final s3 = 15.41998351.obs;

  late final Animation<double> _a1;
  late final Animation<double> _a2;
  late final Animation<double> _a3;

  @override
  void onInit() {
    super.onInit();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..repeat();

    // Staggered intervals (0→1 timeline)
    _a1 = Tween(begin: 0.7, end: 1.2).chain(
      CurveTween(curve: const Interval(0.00, 0.60, curve: Curves.easeInOut)),
    ).animate(_controller);

    _a2 = Tween(begin: 0.7, end: 1.2).chain(
      CurveTween(curve: const Interval(0.20, 0.80, curve: Curves.easeInOut)),
    ).animate(_controller);

    _a3 = Tween(begin: 0.7, end: 1.2).chain(
      CurveTween(curve: const Interval(0.40, 1.00, curve: Curves.easeInOut)),
    ).animate(_controller);

    // push animation values into Rx doubles for Obx rebuilds
    _controller.addListener(() {
      s1.value = _a1.value;
      s2.value = _a2.value;
      s3.value = _a3.value;
    });
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }
}

class WTWLoader extends StatelessWidget {
  const WTWLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(WTWLoaderController());

    Widget dot(double w, double h, RxDouble scale) {
      return Obx(() => Transform.scale(
        scale: scale.value,
        child: Container(
          width: w.w,
          height: h.h,
          decoration: BoxDecoration(
            color: WTWColor.primary,
            borderRadius: BorderRadius.circular(9999.r),
          ),
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dot(14.40545654296875, 14.40545654296875, c.s1),
        SizedBox(width: 12.w),
        dot(8.654617309570312, 8.654617309570312, c.s2),
        SizedBox(width: 12.w),
        dot(1.8690032958984375, 1.8690032958984375, c.s3),
      ],
    );
  }
}

class WTWLoadingBar extends StatelessWidget {
  final double progress;

  const WTWLoadingBar({
    required this.progress,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 278.w,
          height: 8.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999.r),
              color: WTWColor.secondary_bg,
              border: Border.all(
                  color: Color(0xFFE5E7EB)
              )
          ),
        ),
        Container(
          width: ((278/3)*progress).w,
          height: 8.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999.r),
              color: WTWColor.primary,
              border: Border.all(
                  color: Color(0xFFE5E7EB)
              )
          ),
        ),
      ],
    );
  }
}
