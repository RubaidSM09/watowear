import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';
import 'package:watowear_chole/common/widget/custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool enabled;
  final int? maxLines; // ignored when obscureText = true
  final int? minLines; // ignored when obscureText = true
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.33.r),
      borderSide: BorderSide(width: 1.04.w, color: WTWColor.text_icons),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: labelText),
        SizedBox(height: 8.h),
        SizedBox(
          width: 356.0000305175781.w,
          height: 49.96491622924805.h,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            obscureText: obscureText,
            enabled: enabled,
            maxLines: obscureText ? 1 : maxLines,
            minLines: obscureText ? 1 : minLines,
            onChanged: onChanged,
            validator: validator,
            style: TextStyle(
              fontSize: 16.65.sp,
              color: WTWColor.text_icons,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xFFADAEBC),
                fontFamily: 'Comfortaa',
                fontSize: 16.65.sp,
                fontWeight: FontWeight.w400
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.65.w,
                vertical: 12.h,
              ),
              filled: true,
              fillColor: Colors.transparent,
              border: border(),
              enabledBorder: border(),
              focusedBorder: border(),
              errorBorder: border(),
              focusedErrorBorder: border(),
              errorStyle: TextStyle(fontSize: 12.sp, color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
