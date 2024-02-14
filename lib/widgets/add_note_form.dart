import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:martenss/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/widgets/custom_buttonWidget.dart';
import 'package:martenss/widgets/custom_text_fieldWidget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

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
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return CustomButton(
              myonTap: () {
                if (fromKey.currentState!.validate()) {
                  fromKey.currentState!.save();

                  var currentDate = DateTime.now();
                  var formattedCurrentDate =
                      DateFormat.yMEd().format(currentDate);
                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            );
          }),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
