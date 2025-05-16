import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_firebase/core/widgets/custom_text_field_widget.dart';
import 'package:note_app_firebase/core/widgets/headline_text_widget.dart';
import 'package:note_app_firebase/features/auth/login/presentation/view/widgets/login_button_widget.dart';
import 'package:note_app_firebase/features/auth/widgets/title_and_text_field_widget.dart';
import '../../../../../../core/routing/app_routes.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../../../core/widgets/text_field_validators.dart';
import '../../../../widgets/rich_text_widget.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});
  @override
  State<LoginBody> createState() => _LoginBodyState();
}
bool obscureText = true;
class _LoginBodyState extends State<LoginBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                child: HeadlineTextWidget(title: AppTexts.hiWelcomeBack),
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
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.whiteColor,
                    ),
                  ),
                    validator: (value){
                      return MyValidators.passwordValidator(value);
                    },
                    hintText: AppTexts.enterYourPassword,
                    controller: passwordController,
                    keyboardType: TextInputType.text),
              ),
              const HeightSpacing(height: 75),
              LoginButtonWidget(emailController: emailController, passwordController: passwordController, formKey: formKey),
              const HeightSpacing(height: 250),
              Center(
                child: RichTextWidget(
                  firstText: AppTexts.dontHaveAnAccount,
                  secondText: AppTexts.signUp,
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
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