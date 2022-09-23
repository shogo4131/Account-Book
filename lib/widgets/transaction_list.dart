import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map((transaction) => Card(
                child: Row(children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 1)),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$${transaction.amount}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transaction.title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat('yyyy-MM-dd').format(transaction.date),
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ]),
              ))
          .toList(),
    );
  }
}
