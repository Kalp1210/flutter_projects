import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // one way to take input from the user
  // const StyledText(String text, {super.key}) : outputText=text;

  const StyledText(this.text, {super.key});

  // now this text will be used to display the text on the screen remember to keep the names same

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, color: Colors.white),
    );
  }
}
