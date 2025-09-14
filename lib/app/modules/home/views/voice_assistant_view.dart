import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:watowear_chole/common/widget/home/voice_assistant/voice_assistant_row.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../controllers/setting_controller.dart';

class VoiceAssistantView extends GetView<SettingController> {
  const VoiceAssistantView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WTWColor.background,
      appBar: AppBar(
        backgroundColor: WTWColor.background,
        scrolledUnderElevation: 0,
        title: Column(
          children: [
            WTWAppbarText(text: 'Voice Assistant'),
          ],
        ),
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
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_1.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
        
                SizedBox(height: 24.10897369.h,),
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_2.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
        
                SizedBox(height: 24.10897369.h,),
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_3.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
        
                SizedBox(height: 24.10897369.h,),
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_4.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
        
                SizedBox(height: 24.10897369.h,),
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_5.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
        
                SizedBox(height: 24.10897369.h,),
        
                VoiceAssistantRow(
                  image: 'assets/images/home/voice_assistant/voice_assistant_6.png',
                  switchedState: controller.isVoiceAssistant1Active.value,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
