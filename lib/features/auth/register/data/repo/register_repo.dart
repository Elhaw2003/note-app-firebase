import 'package:dartz/dartz.dart';
import 'package:note_app_firebase/core/error/failure.dart';

abstract class RegisterRepo{
  Future<Either<Failure,void>> register({required String email,required String pass});
}