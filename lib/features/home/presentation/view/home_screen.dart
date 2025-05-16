import 'package:flutter/material.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/core/widgets/spacing_widget.dart';
import 'package:note_app_firebase/features/home/presentation/view/widgets/button_row_widget.dart';
import 'package:note_app_firebase/features/home/presentation/view/widgets/list_view_note_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          HeightSpacing(height: 137),
          ButtonRowWidget(),
          HeightSpacing(height: 34),
          Expanded(
            child: ListViewNoteWidget()
          ),
          HeightSpacing(height: 20)
        ],
      ),
      );
  }
}
