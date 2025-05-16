class NoteModel{
  final String headline;
  final String description;
  final String createdAt;

  NoteModel({required this.headline, required this.description, required this.createdAt});

 factory NoteModel.fromJson(Map<String,dynamic> json){
    return NoteModel(
        headline: json["headline"],
        description: json["description"],
        createdAt: json["createdAt"]
    );
  }
  Map<String,dynamic> toJson(){
    return {
        "headline": headline,
        "description": description,
        "createdAt": createdAt
        };
  }

}