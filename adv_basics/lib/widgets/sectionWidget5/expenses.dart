import 'package:adv_basics/widgets/sectionWidget5/expenses_list/expenses_list.dart';
import 'package:adv_basics/widgets/sectionWidget5/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/sectionModels5/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Fulter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.30,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    // builder wants a function that returns a widget
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return NewExpense();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expenses Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
