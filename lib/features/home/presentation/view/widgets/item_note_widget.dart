import 'package:flutter/material.dart';
import 'package:note_app_firebase/features/home/data/models/note_model.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'package:intl/intl.dart';
class ItemNoteWidget extends StatelessWidget {
  const ItemNoteWidget({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    final String formattedTime = DateFormat('hh:mm a').format(noteModel.createdAt);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          noteModel.headline,
          style: AppTextStyle.whiteW500Size14Inter,
        ),
        const HeightSpacing(height: 7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Text(
              noteModel.description,
              style: AppTextStyle.descAndDateW500Size14Inter,
            )),
            Text(
              formattedTime,
              style: AppTextStyle.descAndDateW500Size14Inter
                  .copyWith(fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
