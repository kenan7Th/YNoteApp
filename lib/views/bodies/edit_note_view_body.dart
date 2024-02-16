import 'package:flutter/material.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/views/widgets/edit_note_form.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: EditNoteForm(
          note: note,
        ),
      ),
    );
  }
}
