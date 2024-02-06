import 'package:flutter/material.dart';
import 'package:martenss/widgets/customsearch%20iconswidget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIconWidget(),
      ],
    );
  }
}
