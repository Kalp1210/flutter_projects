//=================================
// Section 3 : Quiz App
//=================================

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

// ==================================
// Section 5 and 6: expense tracker
// ==================================

// import 'package:flutter/material.dart';
// import 'package:adv_basics/widgets/sectionWidget5/expenses.dart';
// // import 'package:flutter/services.dart';

// var kColorScheme = ColorScheme.fromSeed(
//   seedColor: Color.fromARGB(255, 96, 59, 181),
// );
// var kDarkColorScheme = ColorScheme.fromSeed(
//   brightness: Brightness.dark,
//   seedColor: Color.fromARGB(255, 5, 99, 125),
// );
// void main() {
//   // WidgetsFlutterBinding.ensureInitialized();

// // this is so that the app never goes in landscape mode

//   // SystemChrome.setPreferredOrientations([
//   //   DeviceOrientation.portraitUp,
//   //   DeviceOrientation.portraitDown,
//   // ]).then((fn) {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.dark().copyWith(
//         colorScheme: kDarkColorScheme,
//         cardTheme: CardTheme().copyWith(
//           color: kDarkColorScheme.secondaryContainer,
//           margin: const EdgeInsets.symmetric(
//             vertical: 8,
//             horizontal: 16,
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//               backgroundColor: kDarkColorScheme.primaryContainer,
//               foregroundColor: kDarkColorScheme.onPrimaryContainer),
//         ),
//       ),
//       theme: ThemeData().copyWith(
//         // useMaterial3: true,
//         colorScheme: kColorScheme,
//         appBarTheme: AppBarTheme().copyWith(
//           backgroundColor: kColorScheme.onPrimaryContainer,
//           foregroundColor: kColorScheme.primaryContainer,
//         ),
//         cardTheme: CardTheme().copyWith(
//           color: kColorScheme.secondaryContainer,
//           margin: const EdgeInsets.symmetric(
//             vertical: 8,
//             horizontal: 16,
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: kColorScheme.primaryContainer,
//           ),
//         ),
//         textTheme: TextTheme().copyWith(
//           titleLarge: TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.normal,
//             color: kColorScheme.onSecondaryContainer,
//           ),
//         ),
//       ),
//       themeMode: ThemeMode.system,
//       home: Expenses(),
//     ),
//   );
//   // });
// }

// ============================screens======
// SECTION 8 AND 9
// ==================================

import 'package:adv_basics/screens/sectionScreens8/tabs.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: TabsScreen(),
      // home: MealsScreen(title: 'someCategory', meals: dummyMeals),
    );
  }
}
