import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(KNOteesBox);
  runApp(const YNoteApp());
}

class YNoteApp extends StatelessWidget {
  const YNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
    );
  }
}
