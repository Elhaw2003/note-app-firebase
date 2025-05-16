import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_firebase/features/auth/login/data/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo}) : super(LoginInitialState());
  LoginRepo loginRepo;
  loginCubitFunc({required String email, required String pass}) async {
    emit(LoginLoadingState());
    var result = await loginRepo.login(email: email, pass: pass);
    return result.fold(
            (l){
              emit(LoginFailureState(message: l.errorMessage));
            },
            (r){
              emit(LoginSuccessState());
            }
    );
  }
}
