import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_firebase/core/routing/app_routes.dart';
import 'package:note_app_firebase/core/routing/router_generation_config.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_button_widget.dart';

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonWidget(
            onPressed: (){
              context.pushNamed(AppRoutes.createNoteScreen);
            },
            title: AppTexts.addNote,
            buttonColor: AppColors.whiteColor,
            borderColor: AppColors.whiteColor,
            width: 140,
            height: 48,
            textStyle: AppTextStyle.blackW600Size16Poppins,
          ),
          CustomButtonWidget(
            title: AppTexts.logout,
            buttonColor: AppColors.whiteColor,
            borderColor: AppColors.whiteColor,
            width: 140,
            height: 48,
            textStyle: AppTextStyle.blackW600Size16Poppins,
          ),
        ],
      ),

    );
  }
}
