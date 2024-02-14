import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/widgets/add_note_bottoom_sheet.dart';
import '../widgets/notes_view_bodyWidget.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllNotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: NotesViewBodyWidget(),
      ),
    );
  }
}
