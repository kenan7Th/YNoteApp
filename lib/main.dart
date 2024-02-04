import 'package:flutter/material.dart';

void main() {
  runApp(const YNoteApp());
}

class YNoteApp extends StatelessWidget {
  const YNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(),
    );
  }
}
