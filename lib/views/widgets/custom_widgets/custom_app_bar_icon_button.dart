import 'package:flutter/material.dart';

class CustomAppBarIconButton extends StatelessWidget {
  const CustomAppBarIconButton({super.key, required this.icon, this.onPressed});
  final Icon icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      //button in app bar
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
