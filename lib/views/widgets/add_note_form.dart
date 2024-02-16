import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:martenss/models/note_model.dart';
import 'package:martenss/views/widgets/add_note_color_list.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_normal_button.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode validate = AutovalidateMode.disabled;

  String? title, content;
  void validation() {
    //if field not empty enter in this if
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save(); //save input of user
      NoteModel note = NoteModel(
          title: title,
          content: content,
          dateTime: DateTime.now().toString(),
          color: BlocProvider.of<AddNoteCubit>(context).color);
      //add note
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    } else {
      validate = AutovalidateMode.always;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validate,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hintText: "Title",
            onSaved: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: "Content",
            maxLines: 5,
            onSaved: (data) {
              content = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const AddNoteColorList(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomNormalButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: "Add",
                onPressed: validation,
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
