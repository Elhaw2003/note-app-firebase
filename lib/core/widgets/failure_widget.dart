import 'package:flutter/material.dart';
import 'package:note_app_firebase/core/widgets/spacing_widget.dart';

import '../utilities/app_colors.dart';
import '../utilities/app_text_style.dart';
import '../utilities/app_texts.dart';
import 'custom_button_widget.dart';
class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: AppTextStyle.whiteW600Size16Manrope,
          ),
          const HeightSpacing(height: 15),
          CustomButtonWidget(
            iconLeft: Icons.restart_alt,
            onPressed: onPressed,
              title: AppTexts.reload,
              buttonColor: AppColors.whiteColor,
              borderColor: AppColors.whiteColor,
              width: 140,
              height: 60,
              borderRadius: 20,
              textStyle: AppTextStyle.blackW600Size16Poppins
          )
        ],
      ),
    );
  }
}
