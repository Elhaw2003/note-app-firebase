import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/home/data/repo/notes/get_notes/get_notes_repo_firebase_implementation.dart';
import 'package:note_app_firebase/features/home/presentation/controller/get_notes/get_notes_cubit.dart';
import 'package:note_app_firebase/features/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => GetNotesCubit(getNotesRepo: GetNotesRepoFirebaseImplementation())..getNotesCubitFun(),
      child: const Scaffold(
        backgroundColor: AppColors.blackColor,
        body: HomeBody(),
        ),
    );
  }
}
