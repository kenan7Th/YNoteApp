import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AllNotesCubit, AllNotesState>(
        builder: (context, state) {
          //fetch all notes in hive DB
          List<NoteModel> notesList =
              BlocProvider.of<AllNotesCubit>(context).notesList!;
          return Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 4),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note: notesList[index],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
