import 'package:flutter/material.dart';

import 'package:martenss/widgets/custom_buttonWidget.dart';

import 'package:martenss/widgets/custom_text_fieldWidget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: 'title'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'content',
                mymaxLine: 5,
              ),
              SizedBox(height: 16),
              CustomButton(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
