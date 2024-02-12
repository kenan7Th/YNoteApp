import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) {
    var notesBox = Hive.box(KNOteesBox);
    notesBox.add(note);
  }
  // int color = kColorListOfNotes[0];

  // //add note method
  // addNote(NoteModel note) async {
  //   emit(AddNoteLoading());

  //   try {
  //     Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
  //     await noteBox.add(note);

  //     emit(AddNoteSuccess());
  //   } catch (e) {
  //     emit(AddNoteFailure(e.toString()));
  //   }
  // }
}
