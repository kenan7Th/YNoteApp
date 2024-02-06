import 'package:flutter/material.dart';
import 'package:martenss/widgets/cutom_note_iconwidget.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: const NoteItemWidget(),
      );
    });
  }
}
