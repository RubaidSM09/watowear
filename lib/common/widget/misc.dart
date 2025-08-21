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

class WTWCamera extends StatelessWidget {
  const WTWCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 114.17.w, vertical: 117.09.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.73.r),
        gradient: LinearGradient(
          colors: [
            Color(0xFF8A8F74),
            Color(0xFFB58A5F),
          ]
        ),
        border: Border.all(
          color: Colors.white.withAlpha(77),
          width: 4.43.sp
        )
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/generate/camera.png',
            width: 53.18181610107422.w,
            height: 46.534088134765625.h,
            // scale: 4,
          ),
          SizedBox(height: 12.178.h,),
          SizedBox(
            width: 161.w,
            child: Text(
              'Position your item\nin the frame',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
                fontSize: 17.73.sp,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class TipsForBetterPhotosSection extends StatelessWidget {
  
  const TipsForBetterPhotosSection({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.3.r),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFE5E7EB),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tips for better photos:',
            style: TextStyle(
              color: Color(0xFF3D3B38),
              fontSize: 15.51.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Comfortaa',
            ),
          ),

          SizedBox(height: 18.02.h,),

          TipsForBetterPhotosRow(text: 'Use good lighting'),

          SizedBox(height: 10.h,),

          TipsForBetterPhotosRow(text: 'Keep the item centered'),

          SizedBox(height: 10.h,),

          TipsForBetterPhotosRow(text: 'Avoid shadows and reflections'),

          SizedBox(height: 10.h,),

          TipsForBetterPhotosRow(text: 'Use a plain background'),
        ],
      ),
    );
  }
}

class TipsForBetterPhotosRow extends StatelessWidget {
  final String text;
  
  const TipsForBetterPhotosRow({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6.w,
          height: 6.h,
          decoration: BoxDecoration(
            color: Color(0xFF3D3B38),
            shape: BoxShape.circle,
          ),
        ),

        SizedBox(width: 8.w,),

        Text(
          text,
          style: TextStyle(
            color: Color(0xFF374151),
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            fontFamily: 'Comfortaa',
          ),
        ),
      ],
    );
  }
}

class ItemPicSection extends StatelessWidget {
  const ItemPicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 390.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.72.r),
          border: Border.all(
            color: Color(0xFFE5E7EB),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 2.18.r,
              offset: Offset(0.w, 1.09.h),
            )
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.72.r),
        child: Image.asset(
          'assets/images/home/item_details/item_pic.png',
          fit: BoxFit.cover,
          scale: 4,
        ),
      ),
    );
  }
}
