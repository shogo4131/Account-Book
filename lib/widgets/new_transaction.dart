import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Function addTransaction;
    final titleController = TextEditingController();
    final amountController = TextEditingController();

    NewTransaction(this.addTransaction);

    return Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(labelText: 'Title'),
                  controller: titleController,
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                ),
                TextButton(
                  onPressed: () {
                    addTransaction(
                      titleController.text,
                      double.parse(amountController.text),
                    );
                  },
                  child: const Text(
                    'Add Transaction',
                    style: TextStyle(color: Colors.purple),
                  ),
                )
              ]),
        ));
  }
}
