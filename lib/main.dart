import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/simple_bloc_observer.dart';
import 'package:martenss/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBolcObserver();
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNOteesBox);
  runApp(const YNoteApp());
}

class YNoteApp extends StatelessWidget {
  const YNoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
