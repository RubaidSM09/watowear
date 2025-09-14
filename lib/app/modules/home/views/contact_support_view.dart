import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/contact_support_controller.dart';

class ContactSupportView extends GetView<ContactSupportController> {
  const ContactSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ContactSupportController());

    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Contact Support'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),

                SizedBox(height: 24.4.h,),

                Container(
                  padding: EdgeInsets.all(26.67.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.89.r),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFFAFAFA),
                      ],
                    ),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(22.22.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: WTWColor.primary.withAlpha(26),
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Image.asset(
                          'assets/images/home/contact_support/contact_support.png',
                          scale: 4,
                        ),
                      ),

                      SizedBox(height: 18.h,),

                      Text(
                        'How can we help?',
                        style: TextStyle(
                          color: WTWColor.text_icons,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                        ),
                      ),

                      SizedBox(height: 9.h,),

                      Text(
                        'We typically respond within 24 hours',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.56.sp,
                        ),
                      ),

                      SizedBox(height: 25.66.h,),

                      Column(
                        spacing: 8.89.h,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Subject',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),

                              Text(
                                '*',
                                style: TextStyle(
                                  color: Color(0xFFEF4444),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),
                            ],
                          ),

                          Obx(() => Container(
                              padding: EdgeInsets.symmetric(horizontal: 13.33.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.89.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFFCDCDCD),
                                  width: 1.11.r,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: controller.selectedTopic.value,
                                  hint: Text(
                                    'Select a topic...',
                                    style: TextStyle(
                                      color: const Color(0xFFADAEBC),
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.78.sp,
                                    ),
                                  ),
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                                  items: controller.topics.map((t) {
                                    return DropdownMenuItem<String>(
                                      value: t,
                                      child: Text(
                                        t,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.78.sp,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: controller.setTopic,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 26.67.h,),

                      Column(
                        spacing: 8.89.h,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Message',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),

                              Text(
                                '*',
                                style: TextStyle(
                                  color: Color(0xFFEF4444),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            // padding: EdgeInsets.symmetric(horizontal: 13.33.w, vertical: 8.89.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.89.r),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xFFCDCDCD),
                                width: 1.11.r,
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),

                                contentPadding: EdgeInsets.symmetric(horizontal: 13.33.w, vertical: 8.89.h),

                                hintText: 'Describe your issue or question in detail...',
                                hintStyle: TextStyle(
                                  color: const Color(0xFFADAEBC),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.78.sp,
                                ),
                              ),

                              maxLines: 5,
                            ),
                          ),

                          SizedBox(height: 10.67.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Be as specific as possible for faster\nresolution',
                                style: TextStyle(
                                  color: const Color(0xFF6B7280),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.33.sp,
                                ),
                              ),

                              Text(
                                '0/1000',
                                style: TextStyle(
                                  color: const Color(0xFF9CA3AF),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.33.sp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      SizedBox(height: 26.67.h,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8.89.h,
                        children: [
                          Text(
                            'Screenshot (Optional)',
                            style: TextStyle(
                              color: WTWColor.text_icons,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.56.sp,
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.89.r),
                            child: DottedBorder(
                              options: RectDottedBorderOptions(
                                dashPattern: [2.680000066757202.w, 2.680000066757202.h],
                                strokeWidth: 2.22.r,
                                color: WTWColor.secondary_bg,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 64.22.w, vertical: 31.11.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.89.r),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/home/contact_support/screenshot.png',
                                      scale: 4,
                                    ),

                                    SizedBox(height: 6.44.h,),

                                    Text(
                                      'Tap to add a screenshot',
                                      style: TextStyle(
                                        color: Color(0xFF4B5563),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.56.sp,
                                      ),
                                    ),

                                    SizedBox(height: 4.01.h,),

                                    Text(
                                      'JPG, PNG up to 5MB',
                                      style: TextStyle(
                                        color: Color(0xFF9CA3AF),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17.78.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 26.67.h,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8.89.h,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),

                              Text(
                                '*',
                                style: TextStyle(
                                  color: Color(0xFFEF4444),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.56.sp,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            // padding: EdgeInsets.symmetric(horizontal: 13.33.w, vertical: 8.89.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.89.r),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xFFCDCDCD),
                                width: 1.11.r,
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),

                                contentPadding: EdgeInsets.symmetric(horizontal: 13.33.w, vertical: 8.89.h),

                                hintText: 'your.email@example.com',
                                hintStyle: TextStyle(
                                  color: const Color(0xFFADAEBC),
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.78.sp,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 3.77.h,),

                          Text(
                            'We\'ll use this to follow up on your request',
                            style: TextStyle(
                              color: const Color(0xFF6B7280),
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.33.sp,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20.66.h,),

                Container(
                  padding: EdgeInsets.all(18.89.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.89.r),
                    color: Color(0xFFEFF6FF),
                    border: Border.all(
                      color: Color(0xFFBFDBFE),
                      width: 1.11.r,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 14.w,
                    children: [
                      Image.asset(
                        'assets/images/closet/my_closet/quick_scan/pro_tips.png',
                        color: Color(0xFF3B82F6),
                        scale: 4,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 9.125.h,
                        children: [
                          Text(
                            'Quick Tips',
                            style: TextStyle(
                              color: Color(0xFF1E3A8A),
                              fontSize: 17.78.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),

                          Text(
                            '• Include your device model and app\nversion\n• Describe steps to reproduce the\nissue\n• Screenshots help us understand\nthe problem',
                            style: TextStyle(
                              color: Color(0xFF374151),
                              fontSize: 15.96.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 25.h,),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: WTWPrimaryButton(
                    text: 'Send Message',
                    icon: 'assets/images/home/contact_support/send_message.png',
                    onTap: () {  },
                  ),
                ),

                SizedBox(height: 25.33.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
