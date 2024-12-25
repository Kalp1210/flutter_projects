// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// var keyword means that the value of the variable can be changed
// var endAlignment = Alignment.bottomRight;

// const keyword means that the value of the variable is constant and cannot be changed till the time the code is compiled
// const endAlignment = Alignment.bottomRight;

// final keyword means that the value of the variable cannot be changed
// final endAlignment = Alignment.bottomRight;

// stateless widget is a widget that does not have any state
// stateful widget is a widget that has a state and the state can be changed

class GradientContainer extends StatelessWidget {
//  GradientContainer({key}) : super(key: key);
  // const GradientContainer({super.key,required this.colors});
  //  final List<Color> colors;

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
