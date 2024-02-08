import 'package:flutter/material.dart';

import 'package:martenss/widgets/custom_buttonWidget.dart';

import 'package:martenss/widgets/custom_text_fieldWidget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 400,
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'title',
            myonSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Subtitle',
            myonSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            mymaxLine: 5,
          ),
          SizedBox(height: 16),
          CustomButton(
            myonTap: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
