import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/closet/views/select_photos_view.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_buttons.dart';

class PhotoLibraryAccessRequiredView extends GetView {
  const PhotoLibraryAccessRequiredView({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(25.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(23.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      WTWColor.primary,
                      WTWColor.accent,
                    ],
                  ),
                  border: Border.all(color: Color(0xFFE5E7EB)),
                ),
                child: Opacity(
                  opacity: 0.7972,
                  child: Image.asset(
                    'assets/images/closet/my_closet/quick_scan/generate_outfits_now/add_more_items.png',
                    scale: 4,
                  ),
                ),
              ),

              SizedBox(height: 15.h,),

              Text(
                'Photo Library Access Required',
                style: TextStyle(
                  color: WTWColor.text_icons,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Comfortaa',
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 15.h,),

              Text(
                'Select multiple photos from your gallery to quickly build your digital wardrobe and get personalized outfit recommendations.',
                style: TextStyle(
                  color: Color(0xFF4B5563),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Comfortaa',
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 22.h,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.9.w, vertical: 21.53.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFF4F1EB),
                      WTWColor.secondary_bg,
                    ],
                  ),
                  border: Border.all(color: Color(0xFFE5E7EB)),
                ),
                child: Column(
                  spacing: 15.h,
                  children: [
                    Row(
                      spacing: 12.62.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7.63.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.22.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(26),
                                blurRadius: 8.22.r,
                                offset: Offset(0.w, 2.06.h),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/closet/my_closet/quick_scan/generate_outfits_now/bulk_import_photos.png',
                            scale: 4,
                          ),
                        ),

                        SizedBox(
                          width: 210.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bulk Import Photos',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Select multiple clothing photos at once',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 12.62.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7.63.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.22.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(26),
                                blurRadius: 8.22.r,
                                offset: Offset(0.w, 2.06.h),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/closet/my_closet/quick_scan/generate_outfits_now/save_time.png',
                            scale: 4,
                          ),
                        ),

                        SizedBox(
                          width: 210.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Save Time',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'Upload existing photos instead of taking new ones',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 12.62.w,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7.63.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.22.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(26),
                                blurRadius: 8.22.r,
                                offset: Offset(0.w, 2.06.h),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/closet/my_closet/quick_scan/generate_outfits_now/smart_organization.png',
                            scale: 4,
                          ),
                        ),

                        SizedBox(
                          width: 210.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smart Organization',
                                style: TextStyle(
                                  color: WTWColor.text_icons,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                              Text(
                                'AI automatically categorizes your imported items',
                                style: TextStyle(
                                  color: Color(0xFF4B5563),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25.h,),

              WTWPrimaryButton(
                text: 'Allow Camera Access',
                icon: 'assets/images/closet/my_closet/quick_scan/generate_outfits_now/allow_camera_access.png',
                paddingLeftWidth: 45,
                onTap: () {
                  Get.back();
                  Get.to(SelectPhotosView());
                },
              ),

              SizedBox(height: 10.h,),

              WTWSecondaryButton(
                text: 'Not Now',
                icon: 'assets/images/closet/my_closet/quick_scan/add_item_details/congratulations_popup/close.png',
                onTap: () {  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
