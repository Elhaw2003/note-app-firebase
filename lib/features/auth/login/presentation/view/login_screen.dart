import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/auth/login/data/repo/login_firebase_repo_implementation.dart';
import 'package:note_app_firebase/features/auth/login/presentation/controller/login/login_cubit.dart';
import 'package:note_app_firebase/features/auth/login/presentation/view/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => LoginCubit(loginRepo: LoginFirebaseRepoImplementation()),
      child: const Scaffold(
        backgroundColor: AppColors.blackColor,
        body: LoginBody(),
      ),
    );
  }
}
