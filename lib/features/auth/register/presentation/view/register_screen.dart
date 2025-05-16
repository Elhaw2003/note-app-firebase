import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_firebase/core/utilities/app_colors.dart';
import 'package:note_app_firebase/features/auth/register/data/repo/register_firebase_implementation_repo.dart';
import 'package:note_app_firebase/features/auth/register/presentation/controller/register/register_cubit.dart';
import 'package:note_app_firebase/features/auth/register/presentation/view/widgets/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(registerRepo: RegisterFirebaseImplementationRepo()),
      child: const Scaffold(
        backgroundColor: AppColors.blackColor,
        body: RegisterBody(),
      ),
    );
  }
}
