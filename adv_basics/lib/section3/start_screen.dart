import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/sectionImg3/quiz-logo.png',
                width: 300,
              ),
              const SizedBox(height: 80),
              const Text(
                'Learn Flutter the Easy Way!',
                style: TextStyle(
                  color: Color.fromARGB(255, 235, 233, 233),
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Star Quiz'))
            ],
          ),
        ),
      ),
    );
  }
}
