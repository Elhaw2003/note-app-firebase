import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, void>> login({required String email, required String pass});
}