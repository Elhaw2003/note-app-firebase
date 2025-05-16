import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/utilities/app_text_style.dart';
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key, required this.firstText, required this.secondText, this.onTap});
  final String firstText;
  final String secondText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstText,
          style: AppTextStyle.whiteW600Size16Manrope,
          children: [
            TextSpan(
              text: secondText,
              style: AppTextStyle.whiteW600Size16Manrope,
              recognizer: TapGestureRecognizer()
                ..onTap = onTap
            )
          ]
      ),

    );
  }
}
