import 'package:flutter/material.dart';
import 'package:martenss/widgets/customsearch%20iconswidget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget(
      {super.key, required this.title, required this.myicon});
  final String title;
  final IconData myicon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIconWidget(
          IconData: myicon,
        ),
      ],
    );
  }
}
