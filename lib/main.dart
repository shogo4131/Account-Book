import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 70.00, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Dog', amount: 100.00, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Account Book'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Chart',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: transactions
                  .map((transaction) => Card(
                        child: Row(children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
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
                                transaction.date.toString(),
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
