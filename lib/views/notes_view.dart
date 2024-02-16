import 'package:flutter/material.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_floating_action_button.dart';

import 'bodies/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
