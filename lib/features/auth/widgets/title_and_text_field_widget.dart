import 'package:flutter/material.dart';
import '../../../core/utilities/app_text_style.dart';
import '../../../core/widgets/spacing_widget.dart';

class TitleAndTextFieldWidget extends StatelessWidget {
  const TitleAndTextFieldWidget({super.key, required this.title, required this.customTextFieldWidget});
  final String title;
  final Widget customTextFieldWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.whiteW400Size14Poppins,
        ),
        const HeightSpacing(height: 5),
        customTextFieldWidget,
      ],
    );
  }
}
