import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:note_app_firebase/core/error/failure.dart';
import 'package:note_app_firebase/core/utilities/app_texts.dart';
import 'package:note_app_firebase/features/auth/register/data/repo/register_repo.dart';
class RegisterFirebaseImplementationRepo implements RegisterRepo{
  @override
  Future<Either<Failure, void>> register({required String email, required String pass}) async{
    try{
     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: pass);
     return right(null);
    }
    on SocketException{
      return left(NoInternetConnection(errorMessage: AppTexts.noInternet)) ;
    }
    on FirebaseAuthException catch(e) {
      if (e.code == 'email-already-in-use') {
        return left(FirebaseFailure(errorMessage: AppTexts.emailAlreadyInUse));
      }else{
        return left(FirebaseFailure(errorMessage: "errorMessage"));
      }
    }
    catch(e){
      return left(FirebaseFailure(errorMessage: e.toString())) ;
    }
  }
}