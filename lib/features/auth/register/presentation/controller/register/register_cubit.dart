import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_firebase/features/auth/register/data/repo/register_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerRepo}) : super(RegisterInitialState());
 final RegisterRepo registerRepo;
 registerCubitFun({required String email, required String pass})async{
   var result = await registerRepo.register(email: email, pass: pass);
   return result.fold(
           (l){
             emit(RegisterFailureState(message:l.errorMessage ));
           },
           (r){
             emit(RegisterSuccessState());
           });
 }
}
