import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel{
  final String headline;
  final String description;
  final DateTime createdAt;

  NoteModel({required this.headline, required this.description, required this.createdAt});

 factory NoteModel.fromJson(Map<String,dynamic> json){
    return NoteModel(
        headline: json["headline"],
        description: json["description"],
        createdAt: (json["createdAt"] as Timestamp).toDate(),
    );
  }
  Map<String,dynamic> toJson(){
    return {
        "headline": headline,
        "description": description,
        "createdAt": Timestamp.fromDate(createdAt)
        };
  }

}