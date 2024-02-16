import 'package:flutter/material.dart';
import 'package:martenss/views/widgets/custom_widgets/custom_app_bar_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final Icon icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //title of app bar
        Text(
          title,
          style: const TextStyle(fontSize: 32),
        ),
        //icon in app bar
        CustomAppBarIconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
