// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final tr = transactions[index];
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15, 
                    horizontal: 10
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2
                    )
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr.title,
                      style: Theme.of(context).textTheme.headline6,
                      // style: TextStyle(
                      //   fontSize: 16, 
                      //   fontWeight: FontWeight.bold
                      // ),
                    ),
                    Text(
                      DateFormat('d MMM y').format(tr.date),
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    )
                  ],
                )
              ]
            ),
          );
        },
      ),
    );
  }
}