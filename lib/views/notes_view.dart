import 'package:flutter/material.dart';

import '../widgets/notes_view_bodyWidget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('object');
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBodyWidget(),
    );
  }
}
