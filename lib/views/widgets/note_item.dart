import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/models/note_model.dart';

import '../edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                note: note,
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(note.color!),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              trailing: SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  note.title!,
                  style: const TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                note.content!,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24, top: 16),
              alignment: Alignment.centerRight,
              child: Text(
                DateFormat.yMd().format(DateTime.parse(note.dateTime!)),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
