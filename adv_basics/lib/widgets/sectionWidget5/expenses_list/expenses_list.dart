import 'package:adv_basics/widgets/sectionWidget5/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/sectionModels5/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:expenses.length, 
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
