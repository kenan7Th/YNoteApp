part of 'all_notes_cubit.dart';

@immutable
abstract class AllNotesState {}

class AllNotesInitial extends AllNotesState {}

class AllNotesSuccess extends AllNotesState {
  final List<NoteModel> notes;
  AllNotesSuccess(this.notes);
}

class AllNotesLoadingextends extends AllNotesState {}
