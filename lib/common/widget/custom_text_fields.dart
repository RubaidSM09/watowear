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
  final Color fillColor;
  final double width;
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
    this.fillColor = Colors.transparent,
    this.width = 356.0000305175781,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.72.r),
      borderSide: BorderSide(width: 1.09.w, color: Color(0xFFC4C4C4)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: labelText),
        SizedBox(height: 8.h),
        SizedBox(
          width: width.w,
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
              fillColor: fillColor,
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

class CustomTextFieldWhite extends StatelessWidget {
  final String labelText;
  final String hintText;
  final int maxLines;

  const CustomTextFieldWhite({
    required this.labelText,
    required this.hintText,
    this.maxLines = 1,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.33.r),
      borderSide: BorderSide(width: 1.04.w, color: WTWColor.text_icons),
    );

    return Column(
      children: [
        LabelText(text: labelText),
        SizedBox(height: 8.h),
        SizedBox(
          width: 390.w,
          // height: 54.469276428222656.h,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 17.43.sp,
                color: Color(0xFF3D3B38),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
              ),
              isDense: true,
              contentPadding: EdgeInsets.all(13.07.w),
              filled: true,
              fillColor: Colors.white,
              border: border(),
              enabledBorder: border(),
              focusedBorder: border(),
              errorBorder: border(),
              focusedErrorBorder: border(),
            ),
            maxLines: maxLines,
          ),
        )
      ],
    );
  }
}

class AddItemDetailsTextField extends StatelessWidget {
  final String labelText;
  final String labelIcon;
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
  final List<String> examples;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isRequired;

  const AddItemDetailsTextField({
    super.key,
    required this.labelText,
    required this.labelIcon,
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
    this.examples = const [],
    this.onChanged,
    this.validator,
    required this.isRequired,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.72.r),
      borderSide: BorderSide(width: 1.09.w, color: Color(0xFFC4C4C4)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 9,
          children: [
            Image.asset(
              labelIcon,
              scale: 4,
            ),
            LabelText(text: labelText),
            !isRequired ? Text(
              '(Optional)',
              style: TextStyle(
                fontSize: 15.96.sp,
                color: Color(0xFF6B7280),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w400,
              ),
            ) : SizedBox.shrink(),
          ],
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 390.w,
          height: 63.859649658203125.h,
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
                  fontSize: 18.25.sp,
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
              fillColor: Colors.white,
              border: border(),
              enabledBorder: border(),
              focusedBorder: border(),
              errorBorder: border(),
              focusedErrorBorder: border(),
              errorStyle: TextStyle(fontSize: 12.sp, color: Colors.red),
            ),
          ),
        ),
        examples.isNotEmpty ? SizedBox.shrink() : SizedBox(height: 8.h),
        examples.isNotEmpty ? SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 9,
            children: examples.map((example) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 14.82.w, vertical: 7.98.h),
                decoration: BoxDecoration(
                  color: WTWColor.primary.withAlpha(26),
                  borderRadius: BorderRadius.circular(18.25.r),
                  border: Border.all(
                    color: WTWColor.primary.withAlpha(77),
                    width: 1.14.r,
                  ),
                ),
                child: Text(
                  example,
                  style: TextStyle(
                    color: WTWColor.primary,
                    fontFamily: 'Comfortaa',
                    fontSize: 13.68.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
          ),
        ) :
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Optional details for better organization',
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontFamily: 'Comfortaa',
                    fontSize: 13.68.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '0/200',
                  style: TextStyle(
                    color: Color(0xFF9CA3AF),
                    fontFamily: 'Comfortaa',
                    fontSize: 13.68.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
      ],
    );
  }
}
