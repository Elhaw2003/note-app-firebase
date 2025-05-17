import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_firebase/features/home/data/repo/notes/get_notes/get_notes_repo.dart';

import '../../../data/models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit({required this.getNotesRepo}) : super(GetNotesInitialState());
  GetNotesRepo getNotesRepo;
  getNotesCubitFun()async{
    emit(GetNotesLoadingState());
    var result = await getNotesRepo.getNotes();
    return result.fold(
            (l){
              emit(GetNotesFailureState(message: l.errorMessage));
            },
            (r){
              emit(GetNotesSuccessState(notes: r));
            }
    );
  }
}
