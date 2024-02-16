import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/constants.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/views/widgets/custom_widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key});

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
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
                //change color of old note
                BlocProvider.of<AllNotesCubit>(context).color =
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
