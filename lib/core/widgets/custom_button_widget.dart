import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app_firebase/core/widgets/spacing_widget.dart';
import '../utilities/app_colors.dart';
class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      this.onPressed,
      required this.title,
      required this.buttonColor,
      required this.borderColor,
        required this.width,
        required this.height,
        this.iconLeft,
        this.iconRight,
        required this.textStyle,
        this.borderRadius
      }
      );
  final void Function()? onPressed;
  final String title;
  final Color buttonColor;
  final Color borderColor;
  final double width;
  final double? borderRadius;
  final IconData? iconLeft;
  final IconData? iconRight;
  final double height;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(width.w, height.h)),
          alignment: Alignment.center,
          backgroundColor: WidgetStatePropertyAll(buttonColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
              side: BorderSide(color: borderColor),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconLeft != null ? Icon(iconLeft,color: AppColors.blackColor,size: 20.sp,):const SizedBox.shrink(),
            iconLeft != null ? const WidthSpacing(width: 10):const SizedBox.shrink(),
            Text(
              title,
              style: textStyle,
            ),
            iconRight != null ? const WidthSpacing(width: 10):const SizedBox.shrink(),
            iconRight != null ? Icon(iconRight,color: AppColors.blackColor,size: 20.sp,):const SizedBox.shrink(),
          ],
        ),
    );
  }
}
