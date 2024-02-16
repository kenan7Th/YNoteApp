import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martenss/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:martenss/views/widgets/search_notes_list_view.dart';

class SearchNoteBody extends StatefulWidget {
  const SearchNoteBody({
    super.key,
  });

  @override
  State<SearchNoteBody> createState() => _SearchNoteBodyState();
}

class _SearchNoteBodyState extends State<SearchNoteBody> {
  String? search;

  @override
  void initState() {
    BlocProvider.of<AllNotesCubit>(context).filteredNoteList =
        BlocProvider.of<AllNotesCubit>(context).notesList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        //get search word and search it
        CustomTextFormField(
          hintText: "Search",
          onChange: (value) {
            search = value;
            //if search variable is null send "" String to searchNote method
            BlocProvider.of<AllNotesCubit>(context).searchNote(search ?? "");
          },
        ),
        //show filtered notes list view
        const SearchNotesListView(),
      ],
    );
  }
}
