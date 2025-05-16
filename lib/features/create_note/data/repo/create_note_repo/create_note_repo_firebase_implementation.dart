import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:note_app_firebase/core/error/failure.dart';
import 'package:note_app_firebase/features/create_note/data/repo/create_note_repo/create_note_repo.dart';
import 'package:note_app_firebase/features/home/data/models/note_model.dart';

class CreateNoteRepoFirebaseImplementation implements CreateNoteRepo{
  @override
  Future<Either<Failure, void>> createNote({required NoteModel noteModel}) async{
    try{
      await FirebaseFirestore.instance.collection("notes").add(noteModel.toJson());
      return right(null);
    }
    catch(e){
     print(e.toString());
      return left(FirebaseFailure(errorMessage: e.toString()));
    }
  }
}