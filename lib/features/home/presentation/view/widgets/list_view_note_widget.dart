import 'package:flutter/material.dart';
import 'package:note_app_firebase/features/home/data/models/note_model.dart';

import '../../../../../core/widgets/spacing_widget.dart';
import 'item_list_view_widget.dart';

class ListViewNoteWidget extends StatelessWidget {
  const ListViewNoteWidget({super.key, required this.notes});
  final List<NoteModel> notes;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: notes.length,
      separatorBuilder: (context, index) => const HeightSpacing(height: 10),
      itemBuilder: (context, index) {
        return ItemListViewWidget(noteModel: notes[index],);
      },
    );
  }
}
