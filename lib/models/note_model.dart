import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  //code generation code that we should put it in the terminal
  // pakages pub run build_runner build
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}


// // class NoteModel {
// //   final String title;
// //   final String subTitle;
// //   final String date;
// //   final int color;

// //   NoteModel({required this.title, required this.subTitle, required this.date, required this.color});

// // }
