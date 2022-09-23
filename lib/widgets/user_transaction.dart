import 'package:flutter/material.dart';

import '../widgets/transaction_list.dart';
import '../widgets/new_transaction.dart';

import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => __UserTransactionsState();
}

class __UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 70.00, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Dog', amount: 100.00, date: DateTime.now())
  ];

  void addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
