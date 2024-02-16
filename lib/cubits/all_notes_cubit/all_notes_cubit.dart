import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/models/note_model.dart';

part 'all_notes_state.dart';

class AllNotesCubit extends Cubit<AllNotesState> {
  AllNotesCubit() : super(AllNotesInitial());

  List<NoteModel>? notesList;
  List<NoteModel>? filteredNoteList;
  int color = kColorListOfNotes[0];

  //get all notes as a list
  fetchAllNotes() {
    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
    notesList = noteBox.values.toList();
    filteredNoteList = noteBox.values.toList();
    emit(AllNotesSuccess());
  }

  //search by title and get all notes have that title
  searchNote(String search) {
    filteredNoteList =
        notesList!.where((s) => s.title!.contains(search)).toList();
    emit(AllNotesSuccess());
  }
}
