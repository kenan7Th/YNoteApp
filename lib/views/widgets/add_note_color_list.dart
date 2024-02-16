import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:martenss/views/widgets/custom_widgets/color_item.dart';

class AddNoteColorList extends StatefulWidget {
  const AddNoteColorList({super.key});

  @override
  State<AddNoteColorList> createState() => _AddNoteColorListState();
}

class _AddNoteColorListState extends State<AddNoteColorList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorListOfNotes.length,
        itemBuilder: (content, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: () {
                currentIndex = index; //chnage current index
                //change color of new note
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColorListOfNotes[index];
                setState(() {});
              },
              //circle color list with bool of selected color
              child: ColorItem(
                color: kColorListOfNotes[index],
                isSelected: currentIndex == index ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
