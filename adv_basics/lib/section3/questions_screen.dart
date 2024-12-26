import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      // double.infinity makes the widget take up all the available space
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(""), // Question
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text(""), // Option 1
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text(""), // Option 2
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text(""), // Option 3
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text(""), // Option 4
          ),
        ],
      ),
    );
  }
}
