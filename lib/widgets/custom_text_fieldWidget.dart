import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hint, this.mymaxLine = 1, this.myonSaved});

  final String hint;
  final int mymaxLine;
  final void Function(String?)? myonSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: myonSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: KprimaryColor,
      maxLines: mymaxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: KprimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? mycolor]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: mycolor ?? Colors.white));
  }
}
