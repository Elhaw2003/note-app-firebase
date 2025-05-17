import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/create_note/data/repo/create_note_repo/create_note_repo_firebase_implementation.dart';
import 'package:note_app_firebase/features/create_note/presentation/controller/create_note_cubit/create_note_cubit.dart';
import 'package:note_app_firebase/features/create_note/presentation/view/widegts/create_note_appbar.dart';
import 'package:note_app_firebase/features/create_note/presentation/view/widegts/create_note_body.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateNoteCubit(createNoteRepo: CreateNoteRepoFirebaseImplementation()),
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: CreateNoteAppbar(onPressed: (){Navigator.pop(context,true);},),
        ),
        body: const CreateNoteBody(),
      ),
    );
  }
}
