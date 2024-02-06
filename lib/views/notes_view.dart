import 'package:flutter/material.dart';
import 'package:martenss/widgets/add_note_bottoom_sheet.dart';

import '../widgets/notes_view_bodyWidget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBodyWidget(),
    );
  }
}
