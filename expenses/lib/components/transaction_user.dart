import 'dart:math';

import 'package:flutter/material.dart';

import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now()
    ),
    Transaction(
      id: 't2', 
      title: 'Conta de Luz', 
      value: 311.30, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't3', 
      title: 'Conta #02', 
      value: 692.99, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't4', 
      title: 'Conta #8', 
      value: 21.30, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't5', 
      title: 'Conta #91', 
      value: 60.50, 
      date: DateTime.now()
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: DateTime.now()
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}