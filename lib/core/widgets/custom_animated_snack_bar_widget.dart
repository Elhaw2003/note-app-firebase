import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app_firebase/core/utilities/app_text_style.dart';

class CustomAnimatedSnackBarWidget {
  static customAnimatedSnackBar(
  {
  required  BuildContext context,
    required String title,
    required AnimatedSnackBarType type,
    required IconData iconData
}
      ){
    AnimatedSnackBar(
      animationDuration: const Duration(milliseconds: 400),
      duration: const Duration(seconds: 2),
      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
      animationCurve: Curves.bounceIn,
      mobilePositionSettings: MobilePositionSettings(
        bottomOnAppearance: 30.h
      ),
      builder: ((context) {
        return  MaterialAnimatedSnackBar(
          messageText:title,
          type: type,
          messageTextStyle: AppTextStyle.whiteW400Size14Poppins,
          borderRadius: BorderRadius.circular(10.r),
          iconData: iconData,
        );
      }),
    ).show(context);
  }
}
