import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';

class BodyShapeCard extends StatelessWidget {
  final String icon;
  final String text;

  const BodyShapeCard({required this.icon, required this.text, super.key});

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
              SizedBox(width: 16.w),
              BodyShapeText(text: text),
            ],
          ),

          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: WTWColor.text_icons, width: 2.sp),
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
    super.key,
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
              SizedBox(width: 16.w),
              BodyShapeText(text: text),
            ],
          ),

          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: WTWColor.text_icons, width: 2.sp),
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

  const VibeCard({required this.icon, required this.text, super.key});

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
          Image.asset(icon, scale: 4),
          SizedBox(height: 13.93.h),
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
    super.key,
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
              SizedBox(width: 16.w),
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
              border: Border.all(color: WTWColor.text_icons, width: 2.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class FavColorCard extends StatelessWidget {
  final Color color;

  const FavColorCard({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49.96491241455078.w,
      height: 49.96491241455078.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xFFD1D5DB), width: 2.08.sp),
        color: color,
      ),
    );
  }
}

class CelebrityCard extends StatelessWidget {
  final String image;
  final String text;

  const CelebrityCard({required this.image, required this.text, super.key});

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
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 12.28.h),
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
        border: Border.all(color: WTWColor.accent.withAlpha(51)),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/add_wardrobe/idea.png',
            width: 12.375.w,
            height: 18.h,
            scale: 4,
          ),
          SizedBox(width: 22.w),
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
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(7.r),
              topLeft: Radius.circular(7.r),
            ),
            gradient: LinearGradient(
              colors: [
                WTWColor.primary.withAlpha(51),
                WTWColor.accent.withAlpha(51),
              ],
            ),
            border: Border(
              top: BorderSide(color: Color(0xFFE5E7EB)),
              left: BorderSide(color: Color(0xFFE5E7EB)),
              right: BorderSide(color: Color(0xFFE5E7EB)),
            ),
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
                  offset: Offset(0.w, 10.h),
                ),
                BoxShadow(
                  color: Colors.black.withAlpha(26),
                  blurRadius: 6.r,
                  offset: Offset(0.w, 4.h),
                ),
              ],
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
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(7.r),
              bottomLeft: Radius.circular(7.r),
            ),
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Color(0xFFE5E7EB)),
              left: BorderSide(color: Color(0xFFE5E7EB)),
              right: BorderSide(color: Color(0xFFE5E7EB)),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HowToTakePhotosText(),
              SizedBox(height: 4.0.h),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 68.5.h,
      padding: EdgeInsets.symmetric(horizontal: 20.5.w, vertical: 10.13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: fillColor,
        border: Border.all(color: borderColor, width: borderWidth.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image, width: 18.w, height: 18.h, scale: 4),
              SizedBox(width: 15.21.w),
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
                  ),
                ],
              ),
            ],
          ),

          Icon(
            Icons.arrow_forward_ios,
            color: WTWColor.text_icons.withAlpha(153),
            size: 22.sp,
          ),
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
        color: Colors.white,
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

          SizedBox(height: 11.1.h),

          SizedBox(
            height: 93.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.25.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: WTWColor.primary.withAlpha(26),
                        shape: BoxShape.circle,
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
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.25.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: WTWColor.primary.withAlpha(26),
                        shape: BoxShape.circle,
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
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.25.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: WTWColor.primary.withAlpha(26),
                        shape: BoxShape.circle,
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
                    ),
                  ],
                ),
              ],
            ),
          ),
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
          width: 1.11.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 13.3.r,
            offset: Offset(0.w, 4.43.h),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [NewToWatowearText(), TakeAppTourText()],
          ),
          Icon(Icons.close, size: 22.16.sp, color: Color(0xFF9CA3AF)),
        ],
      ),
    );
  }
}

class StyleProfileCard extends StatelessWidget {
  final List<String> styles;

  const StyleProfileCard({required this.styles, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385.w,
      height: 88.h,
      padding: EdgeInsets.all(17.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.3.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 13.3.r,
            offset: Offset(0.w, 4.43.h),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Style Profile',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w700,
                  fontSize: 15.51.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: List.generate(styles.length * 2 - 1, (index) {
                  // Odd indices will be separators
                  if (index.isOdd) {
                    return Text(
                      ' · ',
                      style: TextStyle(
                        color: Color(0xFF3D403A),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.73.sp,
                      ),
                    );
                  }
                  // Even indices will be style items
                  final styleText = styles[index ~/ 2];
                  return Text(
                    styleText,
                    style: TextStyle(
                      color: Color(0xFF3D403A),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.73.sp,
                    ),
                  );
                }),
              ),
            ],
          ),

          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/home/edit.png',
              width: 22.135.w,
              height: 22.135.h,
              scale: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class DailyMissionsCard extends StatelessWidget {
  final int totalUploads;

  const DailyMissionsCard({required this.totalUploads, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daily Missions',
              style: TextStyle(
                color: WTWColor.text_icons,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              'assets/images/home/earnXp.png',
              width: 18.w,
              height: 18.h,
              scale: 4,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          width: 385.w,
          height: 95.h,
          padding: EdgeInsets.all(17.305.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: WTWColor.secondary_bg),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upload 3 new items',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '+50 XP',
                    style: TextStyle(
                      color: WTWColor.accent,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              Stack(
                children: [
                  Container(
                    width: 356.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9999.r),
                      color: WTWColor.secondary_bg,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                  Container(
                    width: ((356 / 3) * totalUploads).w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9999.r),
                      color: WTWColor.primary,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text(
                    '$totalUploads of 3 completed',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecentOutfitsCard extends StatelessWidget {
  final String image;
  final String title;

  const RecentOutfitsCard({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.1363525390625.w,
      height: 177.27273559570312.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.3.r),
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 13.3.r,
            offset: Offset(0.w, 4.43.h),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13.3.r),
            child: Image.asset(image, scale: 4, fit: BoxFit.contain),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.3.r),
              gradient: LinearGradient(
                colors: [Colors.black.withAlpha(153), Colors.transparent],
              ),
            ),
          ),
          Positioned(
            top: 12.1.h,
            left: 154.w,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5.21.w,
                vertical: 2.31.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6405.4.r),
                color: Colors.white.withAlpha(204),
              ),
              child: SizedBox(
                height: 15.374506950378418.h,
                child: Image.asset(
                  'assets/images/home/favourite.png',
                  width: 10.249672889709473.w,
                  scale: 4,
                ),
              ),
            ),
          ),
          Positioned(
            top: 148.38.h,
            left: 13.3.w,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class WhatYouLoveCard extends StatelessWidget {
  final String image;

  const WhatYouLoveCard({
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.86.r),
              child: Image.asset(
                image,
                width: 186.14.w,
                height: 230.4545440673828.h,
                fit: BoxFit.cover,
                scale: 4,
              ),
            ),
            Container(
              width: 186.14.w,
              height: 230.4545440673828.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.86.r),
                color: Colors.black.withAlpha(51),
              ),
            )
          ],
        ),
        SizedBox(height: 13.3.h),
        Row(
          children: [
            LikeDislikeButton(
              icon: 'assets/images/home/outfit_suggestions/like.png',
              onTap: () {},
            ),

            SizedBox(width: 13.3.w),

            LikeDislikeButton(
              icon: 'assets/images/home/outfit_suggestions/dislike.png',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class OutfitCards extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OutfitCards({
    required this.image,
    required this.title,
    required this.description,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.1363525390625.w,
      height: 292.5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.86.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 4.43.r,
            offset: Offset(0.w, 2.22.h),
          ),
          BoxShadow(
              color: Colors.black.withAlpha(26),
              blurRadius: 6.65.r,
            offset: Offset(0.w, 4.43.h),
          ),
        ],
        border: Border.all(
          color: Color(0xFFE5E7EB),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.86.r),
              topRight: Radius.circular(8.86.r),
            ),
            child: Image.asset(
              image,
              width: 186.1363525390625.w,
              height: 177.27272033691406.h,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 13.3.h,),

          Row(
            children: [
              SizedBox(width: 13.3.w,),

              SizedBox(
                width: 159.5454559326172.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.73.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Color(0xFF858585),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.3.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OutfitCardsWitRating extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double rating;
  final int itemCount;

  const OutfitCardsWitRating({
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.itemCount,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.1363525390625.w,
      // height: 292.5.h,
      padding: EdgeInsets.only(bottom: 13.3.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.86.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 4.43.r,
            offset: Offset(0.w, 2.22.h),
          ),
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 6.65.r,
            offset: Offset(0.w, 4.43.h),
          ),
        ],
        border: Border.all(
          color: Color(0xFFE5E7EB),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.86.r),
              topRight: Radius.circular(8.86.r),
            ),
            child: Image.asset(
              image,
              width: 186.1363525390625.w,
              height: 177.27272033691406.h,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 13.3.h,),

          Row(
            children: [
              SizedBox(width: 13.3.w,),

              SizedBox(
                width: 159.5454559326172.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.73.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 122.98295593261719.w,
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Color(0xFF858585),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.3.sp,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    SizedBox(height: 7.7575.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: 17.73.sp,
                              color: Color(0xFFEAB308),
                            ),
                            SizedBox(width: 4.43.w,),
                            Text(
                              '$rating',
                              style: TextStyle(
                                color: Color(0xFFEAB308),
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.3.sp,
                              ),
                            )
                          ],
                        ),

                        Text(
                          '$itemCount items',
                          style: TextStyle(
                            color: Color(0xFFC89F7D),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.3.sp,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CameraOrGalleryCard extends StatelessWidget {
  const CameraOrGalleryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.43.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.86.r),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFE5E7EB),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 2.22.r,
              offset: Offset(0.w, 1.11.h)
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.19.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.65.r),
                color: WTWColor.primary
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/generate/camera.png',
                  scale: 4,
                ),
                SizedBox(width: 8.87.w,),
                Text(
                  'Camera',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.51.sp,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.19.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.65.r),
                color: Colors.white
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/generate/gallery.png',
                  scale: 4,
                ),
                SizedBox(width: 8.87.w,),
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: WTWColor.primary,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.51.sp,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterCard extends StatelessWidget {
  final String text;
  final bool isSelected;

  const FilterCard({
    required this.text,
    required this.isSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.42.w, vertical: 8.79.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.79.r),
          color: isSelected ? Color(0xFFB57D4A) : Color(0xFFD8D8CF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 2.2.r,
              offset: Offset(0.w, 1.1.h),
            )
          ],
          border: Border.all(
            color: Color(0xFFE5E7EB),
          )
      ),
      child: FilterText(
        text: text,
        isSelected: isSelected,
      ),
    );
  }
}

class ProfileStatCard extends StatelessWidget {
  final String title;
  final double count;
  final String description;
  final Color color;
  final String icon;
  final bool isButtonAvailable;
  final bool isInfoAvailable;

  const ProfileStatCard({
    required this.title,
    required this.count,
    required this.description,
    required this.color,
    required this.icon,
    this.isButtonAvailable = false,
    this.isInfoAvailable = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.877197265625.w,
      height: 184.73683166503906.h,
      padding: EdgeInsets.all(19.39.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.12.r),
        gradient: LinearGradient(
          colors: [
            WTWColor.primary.withAlpha(13),
            WTWColor.primary.withAlpha(5),
          ],
        ),
        border: Border.all(
          color: WTWColor.primary.withAlpha(26),
          width: 1.14.sp,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(11.4.w),
                decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFE5E7EB),
                    )
                ),
                child: Image.asset(
                  icon,
                  scale: 4,
                ),
              ),
              SizedBox(width: 13.68596725.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFf6B7280),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.68.sp,
                    ),
                  ),
                  Text(
                    '$count',
                    style: TextStyle(
                      color: WTWColor.text_icons,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 22.81.sp,
                    ),
                  )
                ],
              )
            ],
          ),

          isInfoAvailable ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 82.10526275634766.w,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.68.sp,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/profile/info2.png',
                scale: 4,
              )
            ],
          ) :
          Text(
            description,
            style: TextStyle(
              color: Color(0xFF6B7280),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 13.68.sp,
            ),
          ),

          isButtonAvailable ? WTWPrimaryProfileStatButton(
            text: 'View My Closet',
            onTap: () {  },
          ) : SizedBox.shrink(),
        ],
      ),
    );
  }
}
