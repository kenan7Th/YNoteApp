
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part of 'all_notes_cubit.dart';

@immutable
abstract class AllNotesState {}

class AllNotesInitial extends AllNotesState {}

class AllNotesSuccess extends AllNotesState {

final  List<NoteModel>notes;
AllNotesSuccess(this.notes);

}
class AllNotesLoadingextends extends AllNotesState {}
class AllNotesFailure extends AllNotesState {
  final String errorMessage;
  AllNotesFailure(this.errorMessage);
}
