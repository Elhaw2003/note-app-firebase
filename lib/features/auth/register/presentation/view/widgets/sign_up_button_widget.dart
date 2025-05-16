import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/custom_animated_snack_bar_widget.dart';
import '../../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../../core/widgets/loading_widget.dart';
import '../../controller/register/register_cubit.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key, required this.emailController, required this.passwordController, required this.formKey});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(context: context,title: AppTexts.createdAccountSuccessfully,iconData: Icons.done, type: AnimatedSnackBarType.success);
        } else if (state is RegisterFailureState) {
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(context: context,title: state.message,iconData: Icons.error, type: AnimatedSnackBarType.error);
        }
      },
      builder: (context, state) {
        return state is RegisterLoadingState
            ? const LoadingWidget()
            : CustomButtonWidget(
            onPressed: (){
              if(formKey.currentState!.validate()){
                context.read<RegisterCubit>().registerCubitFun(email: emailController.text.trim(), pass: passwordController.text.trim());
              }
            },
            title: AppTexts.signUp,
            buttonColor: AppColors.whiteColor,
            borderColor: AppColors.whiteColor,
            height: 48,
            width: double.infinity,
            textStyle: AppTextStyle.blackW600Size16Poppins);
      },
    );
  }
}
