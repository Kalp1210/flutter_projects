import 'package:flutter/material.dart';
import 'package:adv_basics/section3/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: StartScreen(),
        ),
      ),
    ),
  );
}

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
