
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_firebase/core/widgets/custom_text_field_widget.dart';
import 'package:note_app_firebase/core/widgets/headline_text_widget.dart';
import 'package:note_app_firebase/features/auth/register/presentation/view/widgets/sign_up_button_widget.dart';
import 'package:note_app_firebase/features/auth/widgets/title_and_text_field_widget.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../../../core/widgets/text_field_validators.dart';
import '../../../../widgets/rich_text_widget.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}
class _RegisterBodyState extends State<RegisterBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacing(height: 130),
              const Center(
                child: HeadlineTextWidget(title: AppTexts.createNewAccount)
              ),
              const HeightSpacing(height: 18),
              TitleAndTextFieldWidget(
                title: AppTexts.email,
                customTextFieldWidget: CustomTextFieldWidget(
                    validator: (value){
                      return MyValidators.emailValidator(value);
                    },
                    hintText: AppTexts.exampleGmailCom,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress),
              ),
              const HeightSpacing(height: 18),
              TitleAndTextFieldWidget(
                title: AppTexts.password,
                customTextFieldWidget: CustomTextFieldWidget(
                    validator: (value){
                      return MyValidators.passwordValidator(value);
                    },
                    hintText: AppTexts.enterYourPassword,
                    controller: passwordController,
                    keyboardType: TextInputType.text),
              ),
              const HeightSpacing(height: 75),
              SignUpButtonWidget(emailController: emailController, passwordController: passwordController,formKey: formKey,),
              const HeightSpacing(height: 270),
              Center(
                child: RichTextWidget(
                  firstText: AppTexts.alreadyHaveAnAccount,
                  secondText: AppTexts.logIn,
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                ),
              ),
              const HeightSpacing(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
