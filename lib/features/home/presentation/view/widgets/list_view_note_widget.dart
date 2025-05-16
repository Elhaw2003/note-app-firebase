import 'package:flutter/material.dart';

import '../../../../../core/widgets/spacing_widget.dart';
import 'item_list_view_widget.dart';

class ListViewNoteWidget extends StatelessWidget {
  const ListViewNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      separatorBuilder: (context, index) => const HeightSpacing(height: 10),
      itemBuilder: (context, index) {
        return const ItemListViewWidget();
      },
    );
  }
}
