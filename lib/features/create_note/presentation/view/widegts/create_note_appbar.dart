import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_firebase/features/home/presentation/controller/get_notes/get_notes_cubit.dart';
import '../../../../../core/utilities/app_colors.dart';

class CreateNoteAppbar extends StatelessWidget {
  const CreateNoteAppbar({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blackColor,
      leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_back_ios_new,color: AppColors.whiteColor,)
      ),
    );
  }
}
