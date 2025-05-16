import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:note_app_firebase/core/error/failure.dart';
import 'package:note_app_firebase/core/utilities/app_texts.dart';
import 'package:note_app_firebase/features/auth/login/data/repo/login_repo.dart';

class LoginFirebaseRepoImplementation implements LoginRepo{
  @override
  Future<Either<Failure, void>> login({required String email, required String pass}) async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
      return right(null);
    }on SocketException{
      return left(NoInternetConnection(errorMessage: AppTexts.noInternet));
    }
    catch(e){
      return left(FirebaseFailure(errorMessage: e.toString()));
    }
  }
}