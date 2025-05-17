import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:note_app_firebase/core/error/failure.dart';
import 'package:note_app_firebase/core/utilities/app_texts.dart';

import 'package:note_app_firebase/features/home/data/models/note_model.dart';

import 'get_notes_repo.dart';

class GetNotesRepoFirebaseImplementation implements GetNotesRepo{
  @override
  Future<Either<Failure, List<NoteModel>>> getNotes() async{
    try{
      final getData = await FirebaseFirestore.instance.collection("notes").get();
      final notes = getData.docs.map((doc)=>NoteModel.fromJson(doc.data())).toList();
      return right(notes);
    }
    on SocketException{
      return left(NoInternetConnection(errorMessage: AppTexts.noInternet));
    }
    catch(e){
      print(e.toString());
      return left(FirebaseFailure(errorMessage: e.toString()));
    }
  }
}