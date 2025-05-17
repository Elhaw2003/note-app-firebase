import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../../models/note_model.dart';

abstract class GetNotesRepo {
  Future<Either<Failure, List<NoteModel>>> getNotes();
}