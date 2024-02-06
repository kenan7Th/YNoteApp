import 'package:flutter/material.dart';

import 'package:martenss/widgets/custom_app_barWidget.dart';
import 'package:martenss/widgets/notes_list_view_widget.dart';

class NotesViewBodyWidget extends StatelessWidget {
  const NotesViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          CustomAppBarWidget(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
