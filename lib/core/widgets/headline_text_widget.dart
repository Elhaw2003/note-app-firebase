import 'package:flutter/material.dart';

import '../utilities/app_text_style.dart';

class HeadlineTextWidget extends StatelessWidget {
  const HeadlineTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.headLineStyle,
    );
  }
}
