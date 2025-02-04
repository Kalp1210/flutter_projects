// Section 3 : Quiz App
// import 'package:flutter/material.dart';
// import 'package:adv_basics/section3/start_screen.dart'; // yeh comment hi rakhna hai
// import 'package:adv_basics/section3/quiz.dart';
// void main() {
//   runApp(Quiz());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
//           child: StartScreen(),
//         ),
//       ),
//     );
//   }
// }

// Section 5: expense tracker

import 'package:flutter/material.dart';
import 'package:adv_basics/widgets/sectionWidget5/expenses.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Expenses(),
    ),
  );
}
