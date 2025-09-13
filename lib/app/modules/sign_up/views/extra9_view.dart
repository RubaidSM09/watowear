import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/custom_colors.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../common/widget/custom_text_fields.dart';
import '../controllers/extras_controller.dart';

class Extra9View extends GetView<ExtrasController> {
  const Extra9View({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 33.h,
          left: 42.5.w,
          right: 42.5.w,
          bottom: 24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResetPasswordHeadText(
              text: 'What is the height and Weight of your body?',
            ),
            SizedBox(height: 12.h),
            const ExtrasSubheadText(
              text: 'Used to personalize outfit recommendations.',
            ),
            SizedBox(height: 24.08.h),

            HeightWeightTextField(
              labelText: 'Height',
              hintText: 'Type your height',
              unit: controller.heightUnit,
              units: controller.heightUnits,
              onUnitChanged: controller.setHeightUnit,
            ),

            SizedBox(height: 12.h),

            HeightWeightTextField(
              labelText: 'Weight',
              hintText: 'Type your weight',
              unit: controller.weightUnit,
              units: controller.weightUnits,
              onUnitChanged: controller.setWeightUnit,
            ),

            SizedBox(height: 175.h),
          ],
        ),
      ),
    );
  }
}

class HeightWeightTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final RxString unit;
  final List<String> units;
  final void Function(String?) onUnitChanged;

  const HeightWeightTextField({
    required this.labelText,
    required this.hintText,
    required this.unit,
    required this.units,
    required this.onUnitChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: WTWColor.text_icons,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
        ),

        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: WTWColor.text_icons),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: WTWColor.text_icons),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: WTWColor.text_icons),
            ),
            filled: true,
            fillColor: Colors.transparent,

            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xFF787878).withAlpha(166),
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),

            suffixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
            ),
            suffixIcon: IntrinsicWidth(
              child: Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF686868).withAlpha(153),
                      width: 0.5.r,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Obx(() {
                      return DropdownButton<String>(
                        isDense: true,
                        value: unit.value,
                        icon: Icon(Icons.keyboard_arrow_down, size: 16.r, color: const Color(0xFF1D1D1D)),
                        onChanged: onUnitChanged,
                        items: units
                            .map(
                              (u) => DropdownMenuItem<String>(
                            value: u,
                            child: Text(
                              u,
                              style: TextStyle(
                                color: const Color(0xFF1D1D1D),
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w700,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        )
                            .toList(),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
