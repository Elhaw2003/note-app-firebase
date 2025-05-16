import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
class AppTextStyle {
  static TextStyle headLineStyle = GoogleFonts.poppins(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp
  );
  static TextStyle whiteW400Size14Poppins = GoogleFonts.poppins(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp
  );
  static TextStyle errorTextStyleForTextField = GoogleFonts.poppins(
        fontSize: 12.sp,
        color: AppColors.redColor,
        height: 1.h,
  );
  static TextStyle blackW600Size16Poppins = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp
  );
  static TextStyle whiteW600Size16Manrope = GoogleFonts.manrope(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp
  );
}