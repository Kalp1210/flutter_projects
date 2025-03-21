import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13.5,
          ),
        ),
      ],
    );
  }
}
