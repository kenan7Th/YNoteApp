import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.mymaxLine = 1});

  final String hint;
  final int mymaxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
