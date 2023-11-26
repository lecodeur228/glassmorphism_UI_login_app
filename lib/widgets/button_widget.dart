import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text_button;
  const ButtonWidget({super.key,required this.text_button});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child:  Center(
          child: Text(
        text_button,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}
