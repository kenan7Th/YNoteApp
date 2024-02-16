import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/views/widgets/add_note_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //this bottom sheet show up when press on icon bellow
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.grey.shade800,
          context: context,
          builder: (context) {
            return const AddNoteSheet();
          },
        );
      },
      backgroundColor: kPrimaryColor,
      tooltip: "Add Note",
      //this is icon
      child: const Icon(
        Icons.note_add,
        size: 36,
      ),
    );
  }
}
