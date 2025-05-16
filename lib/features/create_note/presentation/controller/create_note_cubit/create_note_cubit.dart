import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_firebase/features/create_note/data/repo/create_note_repo/create_note_repo.dart';

import '../../../../home/data/models/note_model.dart';

part 'create_note_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit({required this.createNoteRepo}) : super(CreateNoteInitialState());
  CreateNoteRepo createNoteRepo;
  createNoteCubitFun({required NoteModel noteModel})async{
    emit(CreateNoteLoadingState());
    var result = await createNoteRepo.createNote(noteModel: noteModel);
    result.fold((l) => emit(CreateNoteFailureState(message: l.errorMessage)), (r) => emit(CreateNoteSuccessState()));
  }
}
