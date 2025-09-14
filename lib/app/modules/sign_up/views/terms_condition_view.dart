import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/terms_condition_controller.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class TermsConditionView extends GetView<TermsConditionController> {
  const TermsConditionView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(TermsConditionController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Terms & Conditions'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 24.4.h,),
        
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFFDBDFC0),
                  ),
                  child: Column(
                    children: [
                      TermsConditionPoint(text: 'Lorem ipsum dolor sit amet consectetur. Lacus at venenatis gravida vivamus mauris. Quisque mi est vel dis. Donec rhoncus laoreet odio orci sed risus elit accumsan. Mattis ut est tristique amet vitae at aliquet. Ac vel porttitor egestas scelerisque enim quisque senectus. Euismod ultricies vulputate id cras bibendum sollicitudin proin odio bibendum. Velit velit in scelerisque erat etiam rutrum phasellus nunc. Sed lectus sed a at et eget. Nunc purus sed quis at risus. Consectetur nibh justo proin placerat condimentum id at adipiscing.'),
        
                      TermsConditionPoint(text: 'Vel blandit mi nulla sodales consectetur. Egestas tristique ultrices gravida duis nisl odio. Posuere curabitur eu platea pellentesque ut. Facilisi elementum neque mauris facilisis in. Cursus condimentum ipsum pretium consequat turpis at porttitor nisi.',),
        
                      TermsConditionPoint(text: 'Scelerisque tellus praesent condimentum euismod a faucibus. Auctor at ultricies at urna aliquam massa pellentesque. Vitae vulputate nullam diam placerat m.',),
        
                      TermsConditionPoint(text: 'Scelerisque tellus praesent condimentum euismod a faucibus. Auctor at ultricies at urna aliquam massa pellentesque. Vitae vulputate nullam diam placerat m.',),
                    ],
                  ),
                ),
        
                SizedBox(height: 22.h,),
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          controller.isChecked.value =
                          !controller.isChecked.value;
                        },
                        child: Container(
                          width: 20.818714141845703.w,
                          height: 20.818714141845703.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1.04.r),
                            border: Border.all(
                                color: Colors.black, width: 0.52.w),
                          ),
                          child: controller.isChecked.value
                              ? Icon(
                            Icons.check,
                            size: 16.sp,
                            color: Colors.black,
                          )
                              : null,
                        ),
                      );
                    }),
                    SizedBox(width: 12.49.w,),
                    SizedBox(
                      width: 320.w,
                      child: Wrap(
                        children: [
                          Text(
                            'I have read and accept the ',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
        
                          Text(
                            'Terms',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                          ),
        
                          Text(
                            ' & ',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
        
                          Text(
                            'Conditions',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                          ),
        
                          Text(
                            '.',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 20.h,),
                
                WTWPrimaryButton(
                  text: 'Close',
                  onTap: () => Get.back(),
                ),
        
                SizedBox(height: 50.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TermsConditionPoint extends StatelessWidget {
  final String text;

  const TermsConditionPoint({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '●',
          style: TextStyle(
            color: Color(0xFF475467),
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),

        SizedBox(
          width: 312.w,
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFF475467),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
        )
      ],
    );
  }
}
