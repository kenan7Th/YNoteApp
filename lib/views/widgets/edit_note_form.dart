import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/dimensionsofscreen.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_app_bar.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_normal_button.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:martenss/views/widgets/edit_note_color_list.dart';

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}

class _EditNoteFormState extends State<EditNoteForm> {
  String? title, content;

  void updateNote() {
    widget.note.title = title ?? widget.note.title;
    widget.note.content = content ?? widget.note.content;
    widget.note.color = BlocProvider.of<AllNotesCubit>(context).color;
    widget.note.save(); //save changes
    //fetch all notes after update this note
    BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
    Navigator.pop(context); //go back to main view
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 32,
        ),
        CustomAppBar(
          title: "Edit Note",
          icon: const Icon(
            Icons.check,
            size: 32,
          ),
          onPressed: updateNote,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          hintText: "Title",
          oldValue: widget.note.title!,
          onChange: (value) {
            title = value;
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFormField(
          hintText: "Content",
          oldValue: widget.note.content!,
          maxLines: 14,
          onChange: (value) {
            content = value;
          },
        ),
        const SizedBox(
          height: 8,
        ),
        const EditNoteColorList(),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 25),
        ),
        CustomNormalButton(
          text: "Save",
          onPressed: updateNote,
        ),
      ],
    );
  }
}
