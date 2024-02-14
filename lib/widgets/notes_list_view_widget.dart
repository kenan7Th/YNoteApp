import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/widgets/cutom_note_iconwidget.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNotesCubit, AllNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<AllNotesCubit>(context).notesList!;
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItemWidget(
                    note: notes[index],
                  ),
                );
              },
            ));
      },
    );
  }
}
