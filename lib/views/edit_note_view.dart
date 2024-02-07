import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:martenss/widgets/edit_veiew_body_Wdiget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteVeiwBody(),
    );
  }
}
