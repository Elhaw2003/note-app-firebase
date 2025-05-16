import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilities/app_colors.dart';

class CreateNoteAppbar extends StatelessWidget {
  const CreateNoteAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blackColor,
      leading: IconButton(onPressed: (){
        context.pop();
      },
          icon: const Icon(Icons.arrow_back_ios_new,color: AppColors.whiteColor,)
      ),
    );
  }
}
