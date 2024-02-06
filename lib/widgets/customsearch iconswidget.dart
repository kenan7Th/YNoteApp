import 'package:flutter/material.dart';

class CustomSearchIconWidget extends StatelessWidget {
  const CustomSearchIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(22)),
        child: Center(
          child: Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
