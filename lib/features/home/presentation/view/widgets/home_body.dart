import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app_firebase/core/utilities/app_texts.dart';
import 'package:note_app_firebase/features/home/presentation/controller/get_notes/get_notes_cubit.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/failure_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';
import 'button_row_widget.dart';
import 'list_view_note_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpacing(height: 137),
        const ButtonRowWidget(),
        const HeightSpacing(height: 34),
        Expanded(
            child: BlocBuilder<GetNotesCubit, GetNotesState>(
              builder: (context, state) {
                 if(state is GetNotesLoadingState){
                   return Lottie.asset(Assets.lottieAnimationShimmerAnimationLoading);
                 }
                 else if(state is GetNotesSuccessState){
                   return state.notes.isEmpty ?  Center(child: Text(AppTexts.noNotesCreatedYet,style: AppTextStyle.whiteW600Size16Manrope,)) : ListViewNoteWidget(notes: state.notes,);
                 }
                 else if(state is GetNotesFailureState){
                   return FailureWidget(
                     text: state.message,
                     onPressed: (){
                       context.read<GetNotesCubit>().getNotesCubitFun();
                     },
                   );
                 }
                 else{
                   return const SizedBox.shrink();
                 }
              },
            )
        ),
        const HeightSpacing(height: 20),
      ],
    );
  }
}
