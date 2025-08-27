import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watowear_chole/common/custom_colors.dart';

class TaskToCompleteSection extends StatelessWidget {
  const TaskToCompleteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tasks to Complete',
              style: TextStyle(
                color: Color(0xFF212121),
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 19.94.sp,
              ),
            ),
            Text(
              'Hide Completed',
              style: TextStyle(
                color: WTWColor.primary,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w500,
                fontSize: 15.51.sp,
              ),
            ),
          ],
        ),

        SizedBox(height: 13.29727394.h,),

        TaskToCompleteCard(
          title: 'Take photos of 5 items',
          subtitle: 'Use good lighting and clean background',
          isCompleted: true,
          isDisabled: false,
        ),

        SizedBox(height: 13.30046356.h,),

        TaskToCompleteCard(
          title: 'Upload 2 items from gallery',
          subtitle: 'Choose clear, well-lit photos',
          isCompleted: true,
          isDisabled: false,
        ),

        SizedBox(height: 13.30046356.h,),

        TaskToCompleteCard(
          title: 'Add 3 more items',
          subtitle: 'Complete your wardrobe collection',
          isCompleted: false,
          isDisabled: false,
        ),

        SizedBox(height: 13.30046356.h,),

        TaskToCompleteCard(
          title: 'Review and confirm uploads',
          subtitle: 'Make sure all items are properly tagged',
          isCompleted: false,
          isDisabled: true,
        ),
      ],
    );
  }
}

class TaskToCompleteCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isDisabled;

  const TaskToCompleteCard({
    required this.title,
    required this.subtitle,
    required this.isCompleted,
    required this.isDisabled,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return isDisabled ? Opacity(
      opacity: 0.6,
      child: Container(
        padding: EdgeInsets.all(18.84.w),
        decoration: BoxDecoration(
          color: isCompleted ? Color(0xFFE0F8F0) : Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isCompleted ? Color(0xFFA7E3D0) : Color(0xFFE5E7EB),
            width: 1.11.sp,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.54.w, vertical: 8.86.h),
              decoration: BoxDecoration(
                color: isCompleted ? WTWColor.primary : Colors.white,
                borderRadius: BorderRadius.circular(6.65.r),
                border: Border.all(
                  color: isCompleted ? Color(0xFFE5E7EB) : Color(0xFFD1D5DB),
                  width: isCompleted ? 1.sp : 2.22.sp,
                ),
              ),
              child: isCompleted ? Image.asset(
                'assets/images/style_missions/mission_details/task_completed.png',
                scale: 4,
              ): SizedBox(
                width: 15.51309585571289.w,
                height: 11.081276893615723.h,
              ),
            ),
            SizedBox(
              width: 308.0113830566406.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.73.sp,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.51.sp,
                    ),
                  ),
                  !isCompleted && !isDisabled ? SizedBox(height: 5.81.h,) : SizedBox.shrink(),
                  !isCompleted && !isDisabled ? Row(
                    children: [
                      Text(
                        'Start Task',
                        style: TextStyle(
                          color: WTWColor.primary,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w700,
                          fontSize: 15.51.sp,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: WTWColor.primary,
                        size: 15.51.sp,
                      )
                    ],
                  ) : SizedBox.shrink(),
                ],
              ),
            )
          ],
        ),
      ),
    )

        :

    Container(
      padding: EdgeInsets.all(18.84.w),
      decoration: BoxDecoration(
        color: isCompleted ? Color(0xFFE0F8F0) : Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: isCompleted ? Color(0xFFA7E3D0) : Color(0xFFE5E7EB),
          width: 1.11.sp,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.54.w, vertical: 8.86.h),
            decoration: BoxDecoration(
              color: isCompleted ? WTWColor.primary : Colors.white,
              borderRadius: BorderRadius.circular(6.65.r),
              border: Border.all(
                color: isCompleted ? Color(0xFFE5E7EB) : Color(0xFFD1D5DB),
                width: isCompleted ? 1.sp : 2.22.sp,
              ),
            ),
            child: isCompleted ? Image.asset(
              'assets/images/style_missions/mission_details/task_completed.png',
              scale: 4,
            ): SizedBox(
              width: 15.51309585571289.w,
              height: 11.081276893615723.h,
            ),
          ),
          SizedBox(
            width: 308.0113830566406.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                    fontSize: 17.73.sp,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.51.sp,
                  ),
                ),
                !isCompleted && !isDisabled ? SizedBox(height: 5.81.h,) : SizedBox.shrink(),
                !isCompleted && !isDisabled ? Row(
                  children: [
                    Text(
                      'Start Task',
                      style: TextStyle(
                        color: WTWColor.primary,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.51.sp,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: WTWColor.primary,
                      size: 15.51.sp,
                    )
                  ],
                ) : SizedBox.shrink(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
