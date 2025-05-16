import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_firebase/core/routing/app_routes.dart';
import 'package:note_app_firebase/core/routing/router_generation_config.dart';
import 'package:note_app_firebase/features/auth/login/presentation/controller/login/login_cubit.dart';

import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/custom_animated_snack_bar_widget.dart';
import '../../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../../core/widgets/loading_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget(
      {super.key, required this.emailController, required this.passwordController, required this.formKey});

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if(state is LoginSuccessState){
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(context: context,title: AppTexts.loginSuccessfully,iconData: Icons.done, type: AnimatedSnackBarType.success);
          context.pushReplacementNamed(AppRoutes.homeScreen);
        }
        else if(state is LoginFailureState){
          CustomAnimatedSnackBarWidget.customAnimatedSnackBar(context: context,title: state.message,iconData: Icons.error, type: AnimatedSnackBarType.error);
        }
      },
      builder: (context, state) {
        return state is LoginLoadingState ? const LoadingWidget() : CustomButtonWidget(
            onPressed:(){
              if(formKey.currentState!.validate()){
                context.read<LoginCubit>().loginCubitFunc(email: emailController.text.trim(), pass: passwordController.text.trim());
              }
            },
            title: AppTexts.logIn,
            buttonColor: AppColors.whiteColor,
            borderColor: AppColors.whiteColor,
            width: double.infinity,
            height: 48,
            textStyle: AppTextStyle.blackW600Size16Poppins);
      },
    );
  }
}
