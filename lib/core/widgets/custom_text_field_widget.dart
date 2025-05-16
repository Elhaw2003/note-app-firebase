import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_colors.dart';
import '../utilities/app_text_style.dart';
class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText, this.suffixIcon,this.obscureText, required this.controller, this.validator, required this.keyboardType, this.prefixIcon, this.minLines = 1, this.maxLines = 1});
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      maxLines: maxLines,
      minLines: minLines,
      style: AppTextStyle.whiteW600Size16Manrope,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      obscureText: obscureText?? false,
      cursorColor: AppColors.whiteColor,
      decoration: InputDecoration(
        fillColor: AppColors.pinkColor.withOpacity(0.08),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
        hintText: hintText,
        hintStyle: AppTextStyle.whiteW400Size14Poppins.copyWith(fontSize: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.borderTextFieldColor,width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColors.borderTextFieldColor,width: 1)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColors.redColor,width: 1)
        ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColors.redColor, width: 1),
          ),
          errorStyle: AppTextStyle.errorTextStyleForTextField,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
