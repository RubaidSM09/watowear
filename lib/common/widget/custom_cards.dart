import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';

class BodyShapeCard extends StatelessWidget {
  final String icon;
  final String text;

  const BodyShapeCard({
    required this.icon,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: WTWColor.text_icons),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(7.41.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: WTWColor.text_icons.withAlpha(51),
                ),
                child: Image.asset(
                  icon,
                  scale: 4,
                  width: 17.19.w,
                  height: 17.19.h,
                ),
              ),
              SizedBox(width: 16.w,),
              BodyShapeText(text: text),
            ],
          ),

          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: WTWColor.text_icons, width: 2.sp)
            ),
          ),
        ],
      ),
    );
  }
}

class SkinToneCard extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final String text;

  const SkinToneCard({
    required this.color,
    required this.borderColor,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: WTWColor.text_icons),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                padding: EdgeInsets.all(7.41.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: Border.all(color: borderColor),
                ),
              ),
              SizedBox(width: 16.w,),
              BodyShapeText(text: text),
            ],
          ),

          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: WTWColor.text_icons, width: 2.sp)
            ),
          ),
        ],
      ),
    );
  }
}

class VibeCard extends StatelessWidget {
  final String icon;
  final String text;

  const VibeCard({
    required this.icon,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.67251586914062.w,
      height: 99.92982482910156.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.33.r),
        border: Border.all(color: WTWColor.text_icons, width: 1.04.sp),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            scale: 4,
          ),
          SizedBox(height: 13.93.h,),
          VibeText(text: text),
        ],
      ),
    );
  }
}

class NewThingsCard extends StatelessWidget {
  final String icon;
  final String text;
  final String subText;

  const NewThingsCard({
    required this.icon,
    required this.text,
    required this.subText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: WTWColor.text_icons),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(7.41.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: WTWColor.text_icons.withAlpha(51),
                ),
                child: Image.asset(
                  icon,
                  scale: 4,
                  width: 17.19.w,
                  height: 17.19.h,
                ),
              ),
              SizedBox(width: 16.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewThingsText(text: text),
                  NewThingsSubtext(text: subText),
                ],
              ),
            ],
          ),

          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: WTWColor.text_icons, width: 2.sp)
            ),
          ),
        ],
      ),
    );
  }
}

class FavColorCard extends StatelessWidget {
  final Color color;

  const FavColorCard({
    required this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49.96491241455078.w,
      height: 49.96491241455078.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xFFD1D5DB), width: 2.08.sp),
        color: color
      ),
    );
  }
}

class CelebrityCard extends StatelessWidget {
  final String image;
  final String text;

  const CelebrityCard({
    required this.image,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.67251586914062.w,
      height: 156.14035034179688.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.33.r),
        border: Border.all(color: WTWColor.text_icons, width: 1.04.sp),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 33.30994034.r,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          SizedBox(height: 12.28.h,),
          CelebrityText(text: text),
        ],
      ),
    );
  }
}

class MoreUploadCard extends StatelessWidget {
  const MoreUploadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 74.h,
      padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 17.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: WTWColor.accent.withAlpha(26),
        border: Border.all(
          color: WTWColor.accent.withAlpha(51),
        )
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/add_wardrobe/idea.png',
            width: 12.375.w,
            height: 18.h,
            scale: 4,
          ),
          SizedBox(width: 22.w,),
          MoreUploadText(),
        ],
      ),
    );
  }
}

class TutorialCard extends StatelessWidget {
  const TutorialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 355.w,
          height: 191.h,
          padding: EdgeInsets.symmetric(horizontal: 145.5.w, vertical: 63.63.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(7.r), topLeft: Radius.circular(7.r)),
            gradient: LinearGradient(
              colors: [WTWColor.primary.withAlpha(51), WTWColor.accent.withAlpha(51)],
            ),
            border: Border(
              top: BorderSide(color: Color(0xFFE5E7EB)),
              left: BorderSide(color: Color(0xFFE5E7EB)),
              right: BorderSide(color: Color(0xFFE5E7EB)),
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withAlpha(230),
              border: Border.all(color: Color(0xFFE5E7EB)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(26),
                  blurRadius: 15.r,
                  offset: Offset(0.w, 10.h)
                ),
                BoxShadow(
                    color: Colors.black.withAlpha(26),
                    blurRadius: 6.r,
                    offset: Offset(0.w, 4.h)
                ),
              ]
            ),
            child: Center(
              child: Image.asset(
                'assets/images/add_wardrobe/play.png',
                width: 15.w,
                height: 17.5.h,
                scale: 4,
              ),
            ),
          ),
        ),

        Container(
          width: 355.w,
          height: 76.h,
          padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 16.05.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(7.r), bottomLeft: Radius.circular(7.r)),
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Color(0xFFE5E7EB)),
                left: BorderSide(color: Color(0xFFE5E7EB)),
                right: BorderSide(color: Color(0xFFE5E7EB)),
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HowToTakePhotosText(),
              SizedBox(height: 4.0.h,),
              QuickTipsText(),
            ],
          ),
        ),
      ],
    );
  }
}

class AddWardrobeCard extends StatelessWidget {
  final Color fillColor;
  final Color borderColor;
  final double borderWidth;
  final String image;
  final String title;
  final String subTitle;

  const AddWardrobeCard({
    required this.fillColor,
    required this.borderColor,
    required this.borderWidth,
    required this.image,
    required this.title,
    required this.subTitle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 68.5.h,
      padding: EdgeInsets.symmetric(horizontal: 20.5.w, vertical: 10.13.h,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: fillColor,
        border: Border.all(
          color: borderColor,
          width: borderWidth.sp
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 18.w,
                height: 18.h,
                scale: 4,
              ),
              SizedBox(width: 15.21.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Color(0xFF4B5563),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              )
            ],
          ),

          Icon(
            Icons.arrow_forward_ios,
            color: WTWColor.text_icons.withAlpha(153),
            size: 22.sp,
          )
        ],
      ),
    );
  }
}

class WhatHappensNext extends StatelessWidget {
  const WhatHappensNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 162.h,
      padding: EdgeInsets.symmetric(horizontal: 42.5.w, vertical: 18.15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white
      ),
      child: Column(
        children: [
          Text(
            'What happens next?',
            style: TextStyle(
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),

          SizedBox(height: 11.1.h,),

          SizedBox(
            height: 93.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.25.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: WTWColor.primary.withAlpha(26),
                        shape: BoxShape.circle
                      ),
                      child: Image.asset(
                        'assets/images/add_wardrobe/auto_tag.png',
                        width: 12.75.w,
                        height: 12.h,
                        scale: 4,
                      ),
                    ),
                    SizedBox(
                      width: 238.w,
                      child: Text(
                        'Auto-tagging with confirmation',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.25.w, vertical: 4.h),
                      decoration: BoxDecoration(
                          color: WTWColor.primary.withAlpha(26),
                          shape: BoxShape.circle
                      ),
                      child: Image.asset(
                        'assets/images/add_wardrobe/color.png',
                        width: 12.75.w,
                        height: 12.h,
                        scale: 4,
                      ),
                    ),
                    SizedBox(
                      width: 238.w,
                      child: Text(
                        'Color and style analysis',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.25.w, vertical: 4.h),
                      decoration: BoxDecoration(
                          color: WTWColor.primary.withAlpha(26),
                          shape: BoxShape.circle
                      ),
                      child: Image.asset(
                        'assets/images/add_wardrobe/suggestion.png',
                        width: 12.75.w,
                        height: 12.h,
                        scale: 4,
                      ),
                    ),
                    SizedBox(
                      width: 238.w,
                      child: Text(
                        'Smart outfit suggestions',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NewToWatowear extends StatelessWidget {
  const NewToWatowear({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.4.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Color(0xFF707868).withAlpha(26),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Color(0xFF707868).withAlpha(51),
          width: 1.11.sp
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 13.3.r,
            offset: Offset(0.w, 4.43.h),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewToWatowearText(),
              TakeAppTourText(),
            ],
          ),
          Icon(
            Icons.close,
            size: 22.16.sp,
            color: Color(0xFF9CA3AF),
          )
        ],
      ),
    );
  }
}
