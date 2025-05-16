import 'package:flutter/material.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/create_note/presentation/view/widegts/create_note_appbar.dart';
import 'package:note_app_firebase/features/create_note/presentation/view/widegts/create_note_body.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CreateNoteAppbar(),
      ),
      body: const CreateNoteBody(),
    );
  }
}
