import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class HelpNFaqView extends GetView {
  const HelpNFaqView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                WTWAppbarText(text: 'Help & FAQ'),
                Image.asset(
                  'assets/images/style_missions/more.png',
                  scale: 4,
                )

              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Column(
              children: [
                Divider(color: WTWColor.secondary_bg,),
        
                SizedBox(height: 26.5.h,),
        
                Column(
                  spacing: 28.h,
                  children: [
                    HelpNFaqRowHeading(
                      icon: 'assets/images/home/help_n_faq/getting_started.png',
                      text: 'Getting Started',
                    ),
        
                    HelpNFaqRow(text: 'How do I upload my first clothing item?',),
        
                    HelpNFaqRow(text: 'How does the AI outfit generator work?',),
        
                    HelpNFaqRow(text: 'What are style missions and how do I complete them?',),
        
                    HelpNFaqRowHeading(
                      icon: 'assets/images/home/help_n_faq/wardrobe_management.png',
                      text: 'Wardrobe Management',
                    ),
        
                    HelpNFaqRow(text: 'Can I edit or delete items from my wardrobe?',),
        
                    HelpNFaqRow(text: 'How accurate is the AI tagging system?',),
        
                    HelpNFaqRow(text: 'Is there a limit to how many items I can upload?',),
        
                    HelpNFaqRowHeading(
                      icon: 'assets/images/home/help_n_faq/technical_support.png',
                      text: 'Technical Support',
                    ),
        
                    HelpNFaqRow(text: 'The app is running slowly, what should I do?',),
        
                    HelpNFaqRow(text: 'My photos aren\'t uploading, what\'s wrong?',),
        
                    HelpNFaqRow(text: 'How do I backup my wardrobe data?',),
        
                    HelpNFaqRowHeading(
                      icon: 'assets/images/home/help_n_faq/account_privacy.png',
                      text: 'Account & Privacy',
                    ),
        
                    HelpNFaqRow(text: 'How do I change my password?',),
        
                    HelpNFaqRow(text: 'Is my wardrobe data private and secure?',),
        
                    HelpNFaqRow(text: 'How do I delete my account?',),
                  ],
                ),
        
                SizedBox(height: 26.5.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelpNFaqRowHeading extends StatelessWidget {
  final String icon;
  final String text;

  const HelpNFaqRowHeading({
    required this.icon,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 13.w,
      children: [
        Image.asset(
          icon,
          scale: 4,
        ),

        Text(
          text,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 18.25.sp,
          ),
        )
      ],
    );
  }
}

class HelpNFaqRow extends StatelessWidget {
  final String text;

  const HelpNFaqRow({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 365.w,
          child: Text(
            text,
            style: TextStyle(
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              fontSize: 15.96.sp,
            ),
          ),
        ),

        Icon(
          Icons.keyboard_arrow_down,
          size: 25.r,
          color: Color(0xFF9CA3AF),
        ),
      ],
    );
  }
}
