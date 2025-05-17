import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app_firebase/features/home/data/models/note_model.dart';
import 'package:note_app_firebase/features/home/presentation/view/widgets/item_note_widget.dart';

import '../../../../../core/utilities/app_colors.dart';

class ItemListViewWidget extends StatelessWidget {
  const ItemListViewWidget({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.pinkColor.withOpacity(0.14),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child:  ItemNoteWidget(noteModel: noteModel,),
      ),
    );
  }
}
