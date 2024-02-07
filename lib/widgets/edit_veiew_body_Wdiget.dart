import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:martenss/widgets/custom_app_barWidget.dart';
import 'package:martenss/widgets/custom_text_fieldWidget.dart';

class EditNoteVeiwBody extends StatelessWidget {
  const EditNoteVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBarWidget(
            title: 'Edite Note',
            myicon: Icons.check,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            mymaxLine: 5,
          ),
        ],
      ),
    );
  }
}
