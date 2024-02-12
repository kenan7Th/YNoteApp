import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNOteesBox);
      notesBox.add(note);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } on Exception catch (e) {
      // TODO
      //call the cubit stat
      AddNoteFailure(e.toString());
    }
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
