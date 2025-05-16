import 'package:flutter/material.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.blackColor,
      body: HomeBody(),
      );
  }
}
