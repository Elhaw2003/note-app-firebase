import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_firebase/core/widgets/custom_animated_snack_bar_widget.dart';
import 'package:note_app_firebase/features/create_note/presentation/controller/create_note_cubit/create_note_cubit.dart';
import 'package:note_app_firebase/features/home/data/models/note_model.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/loading_widget.dart';

class CreateButtonWidget extends StatelessWidget {
  const CreateButtonWidget(
      {super.key,
      required this.headlineController,
      required this.descriptionController});
  final TextEditingController headlineController;
  final TextEditingController descriptionController;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateNoteCubit, CreateNoteState>(
      listener: (context, state) {
        if (state is CreateNoteSuccessState) {
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(
              context: context,
              title: AppTexts.createNewNoteDone,
              type: AnimatedSnackBarType.success,
              iconData: Icons.done);
        } else if (state is CreateNoteFailureState) {
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(
              context: context,
              title: state.message,
              type: AnimatedSnackBarType.error,
              iconData: Icons.error);
        }
      },
      builder: (context, state) {
        return state is CreateNoteLoadingState
            ? const LoadingWidget()
            : CustomButtonWidget(
                onPressed: () {
                 if(headlineController.text.isEmpty || descriptionController.text.isEmpty) {
                   CustomAnimatedSnackBarWidget.customAnimatedSnackBar(context: context,title: AppTexts.fillAllFields,iconData: Icons.error, type: AnimatedSnackBarType.error);
                 }else{
                   context.read<CreateNoteCubit>().createNoteCubitFun(
                     noteModel: NoteModel(
                       headline: headlineController.text.trim(),
                       description: descriptionController.text.trim(),
                       createdAt: "${DateTime.now().hour}:${DateTime.now().minute} ${DateTime.now().hour > 12 ? "PM" : "AM"}",
                     ),
                   );
                 }
                },
                title: AppTexts.create,
                buttonColor: AppColors.whiteColor,
                borderColor: AppColors.whiteColor,
                width: double.infinity,
                height: 48,
                textStyle: AppTextStyle.blackW600Size16Poppins);
      },
    );
  }
}
