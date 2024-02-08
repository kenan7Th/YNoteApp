import 'package:flutter/material.dart';
import 'package:martenss/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.myonTap});

  final void Function()? myonTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myonTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 25,
        decoration: BoxDecoration(
            color: KprimaryColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
