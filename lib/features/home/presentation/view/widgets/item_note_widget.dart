import 'package:flutter/material.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemNoteWidget extends StatelessWidget {
  const ItemNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const HeightSpacing(height: 20),
        Text("Meeting",style: AppTextStyle.whiteW500Size14Inter,),
        const HeightSpacing(height: 7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Text(
              "Excepteur sint occaecat cupidatat non proiden.",style: AppTextStyle.descAndDateW500Size14Inter,)),
            Text("9.00 am",style: AppTextStyle.descAndDateW500Size14Inter.copyWith(fontSize: 10),)
          ],
        )
      ],
    );
  }
}