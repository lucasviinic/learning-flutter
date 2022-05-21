// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main () => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas pessoais"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Gráfico"),
              elevation: 5,
            ),
          ),
          Card(
            child: Text("Lista de Transações"),
          )
        ]
      ),
    );
  }
}