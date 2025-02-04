import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // var _enteredTitle = '';
  // void _saveTitleInput(String inputvalue) {
  //   _enteredTitle = inputvalue;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _saveTitleInput,
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text, //this is one is default
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 20,
                  decoration: InputDecoration(
                    label: Text('Amount'),
                    prefix: Text('\$ '),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                  child: Row(
                children: [
                  Text('Date'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month),
                  )
                ],
              ))
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  // print(_enteredTitle);
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
