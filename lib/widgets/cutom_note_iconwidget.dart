import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:martenss/models/note_model.dart';

import '../views/edit_note_view.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const EditNoteView();
            }),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  note.title!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Text(
                    note.content!,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 26,
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  note.dateTime.toString(),
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
