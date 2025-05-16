import 'package:dartz/dartz.dart';
import 'package:note_app_firebase/core/error/failure.dart';

import '../../../../home/data/models/note_model.dart';

abstract class CreateNoteRepo {
  Future<Either<Failure,void>> createNote({required NoteModel noteModel});
}