import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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
