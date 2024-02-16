// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.oldValue,
    this.onChange,
  });

  final String hintText;
  final int maxLines;
  final void Function(String)? onChange;
  final void Function(String?)? onSaved;
  final String? oldValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: oldValue, //if i want to edit note show current value
      onSaved: onSaved, //if i want to add note i want to save value
      onChanged: onChange, //if i want to edit note
      validator: (data) {
        if ((data?.isEmpty ?? true)) {
          return "field is required";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor, //color of cursor
      textAlign: TextAlign.left, //place of text
      maxLines: maxLines, //max of empty lines
      style: const TextStyle(
        color: kPrimaryColor, // color of typing text
      ),
      decoration: InputDecoration(
        //padding of content
        contentPadding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 20.0,
        ),
        hintText: hintText, //hint to user what field talking about
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        //border of text field
        border: rounderBorder(color: Colors.white),
        enabledBorder: rounderBorder(color: Colors.white),
        focusedBorder: rounderBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder rounderBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: color),
    );
  }
}
