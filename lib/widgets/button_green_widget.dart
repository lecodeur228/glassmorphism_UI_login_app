import 'package:flutter/material.dart';

class ButtonGreenWidget extends StatelessWidget {
  final String button_text;
  const ButtonGreenWidget({super.key,required this.button_text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
      child:  Center(
          child: Text(
        button_text,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
