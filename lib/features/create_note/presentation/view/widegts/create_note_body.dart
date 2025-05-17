import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app_firebase/core/utilities/app_texts.dart';
import 'package:note_app_firebase/core/widgets/custom_text_field_widget.dart';
import 'package:note_app_firebase/core/widgets/headline_text_widget.dart';
import 'package:note_app_firebase/core/widgets/spacing_widget.dart';
import 'package:note_app_firebase/features/auth/widgets/title_and_text_field_widget.dart';
import 'package:note_app_firebase/features/create_note/presentation/view/widegts/create_button_widget.dart';

class CreateNoteBody extends StatefulWidget {
  const CreateNoteBody({super.key});

  @override
  State<CreateNoteBody> createState() => _CreateNoteBodyState();
}

TextEditingController headlineController = TextEditingController();
TextEditingController descriptionController = TextEditingController();

class _CreateNoteBodyState extends State<CreateNoteBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 42.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightSpacing(height: 80),
            const HeadlineTextWidget(title: AppTexts.createNewNote),
            const HeightSpacing(height: 30),
            TitleAndTextFieldWidget(
              title: AppTexts.headLine,
              customTextFieldWidget: CustomTextFieldWidget(
                  hintText: AppTexts.enterNotAddress,
                  controller: headlineController,
                  keyboardType: TextInputType.text),
            ),
            const HeightSpacing(height: 17),
            TitleAndTextFieldWidget(
              title: AppTexts.description,
              customTextFieldWidget: CustomTextFieldWidget(
                  minLines: 5,
                  maxLines: 7,
                  hintText: AppTexts.enterYourDescription,
                  controller: descriptionController,
                  keyboardType: TextInputType.text),
            ),
            const HeightSpacing(height: 170),
            CreateButtonWidget(headlineController: headlineController,descriptionController: descriptionController,),
          ],
        ),
      ),
    );
  }
}