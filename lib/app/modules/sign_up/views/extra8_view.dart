import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/custom_logos.dart';

import '../../../../common/widget/custom_buttons.dart';
import '../../../../common/widget/custom_text.dart';

class Extra8View extends GetView {
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  const Extra8View({
    required this.onTap1,
    required this.onTap2,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 290.88.h,),
          
          CustomLogo(icon: 'assets/images/authentication/tick.png'),

          SizedBox(height: 20.24.h,),

          ResetPasswordHeadText(text: 'Amazing. Thanks for\nSharing!'),

          SizedBox(height: 12.h,),

          ExtrasSubheadText(text: 'This helps me adapt suggestions\nas your style evolves.',),

          SizedBox(height: 54.00000977.h,),

          OnboardingButton(
            text: 'Start Building my closet',
            onTap: onTap1, // Next page
          ),
          SizedBox(height: 16.h),
          OnboardingButton2(
            text: 'Back',
            onTap: onTap2, // Previous page
          ),
        ],
      ),
    );
  }
}
