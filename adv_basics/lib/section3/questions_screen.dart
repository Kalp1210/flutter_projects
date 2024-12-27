import 'package:flutter/material.dart';
import 'package:adv_basics/section3/answer_button.dart';
import 'package:adv_basics/data/sectionData3/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      widget.onSelectAnswer(selectedAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      // double.infinity makes the widget take up all the available space
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 245, 175, 175),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ), // Question
            const SizedBox(height: 30),

            // created answer buttons using map and spread operator

            ...currentQuestion.answers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            })

            // one way to create answer buttons

            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {},
            // ), // Answer 1
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
