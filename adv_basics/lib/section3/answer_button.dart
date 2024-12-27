import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 244, 126, 94),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
