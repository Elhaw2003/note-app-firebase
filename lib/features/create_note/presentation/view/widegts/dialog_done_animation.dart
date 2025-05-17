import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../generated/assets.dart';

class DialogDoneAnimation extends StatelessWidget {
  const DialogDoneAnimation({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Lottie.asset(Assets.lottieAnimationDoneAnimation),
    );
  }
}
