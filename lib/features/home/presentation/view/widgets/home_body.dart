import 'package:flutter/material.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'button_row_widget.dart';
import 'list_view_note_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeightSpacing(height: 137),
        ButtonRowWidget(),
        HeightSpacing(height: 34),
        Expanded(
            child: ListViewNoteWidget()
        ),
        HeightSpacing(height: 20)
      ],
    );
  }
}
