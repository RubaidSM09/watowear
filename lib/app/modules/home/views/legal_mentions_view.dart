import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_buttons.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';

class LegalMentionsView extends GetView {
  const LegalMentionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: WTWAppbarText(text: 'Legal Mentions'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: WTWColor.secondary_bg),

              SizedBox(height: 24.4.h),

              Column(
                spacing: 18.h,
                children: [
                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '1. Company Identity'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            labelText: 'Company Name :',
                            fieldText: 'WATOWEAR SAS',
                          ),

                          LegalMentionField(
                            labelText: 'Legal form :',
                            fieldText: 'SAS / Ltd / Inc',
                          ),

                          LegalMentionField(
                            labelText: 'Registration number :',
                            fieldText: 'RCS / SIRET in France',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '2. Registered Address'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: 'Full postal  address',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '3. Contact'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: 'Contact@watowear.com',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '4. Director of Publication'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: 'Name of responsible person',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '5. Hosting Provider'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            labelText: 'Company Name :',
                            fieldText: 'Company name',
                          ),

                          LegalMentionField(
                            labelText: 'Address :',
                            fieldText: 'Company Address',
                          ),

                          LegalMentionField(
                            labelText: 'Contact :',
                            fieldText: 'Company contact',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '6. Intellectual Property'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: 'All content, visuals, and trademarks are property of WATOWEAR unless otherwise stated',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '7. Copyright'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: '© WATOWEAR 2025. All rights reserved',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '8. Liability Disclaimer'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            fieldText: '• Limits of responsibility for app use and external links',
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 10.h,
                    children: [
                      LegalMentionsLabelText(text: '9. Applicable Law & Jurisdiction'),

                      Column(
                        spacing: 14.h,
                        children: [
                          LegalMentionField(
                            labelText: 'Example :',
                            fieldText: 'This app is governed by French law',
                          ),

                          LegalMentionField(
                            labelText: 'Jurisdiction :',
                            fieldText: 'Paris courts',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              
              SizedBox(height: 40.h,),
              
              WTWPrimaryButton(
                text: 'Close',
                onTap: () => Get.back(),
              ),

              SizedBox(height: 44.h,),
            ],
          ),
        ),
      ),
    );
  }
}

class LegalMentionsLabelText extends StatelessWidget {
  final String text;

  const LegalMentionsLabelText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}

class LegalMentionField extends StatelessWidget {
  final String labelText;
  final String fieldText;

  const LegalMentionField({
    this.labelText = '',
    required this.fieldText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 9.h,
      children: [
        labelText != '' ? Text(
          labelText,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ) : SizedBox.shrink(),

        Container(
          width: 354.w,
          padding: EdgeInsets.only(
            left: 14.w,
            top: 9.h,
            bottom: 9.h,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFE8EADD),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            fieldText,
            style: TextStyle(
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
