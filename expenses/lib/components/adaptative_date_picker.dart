// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unnecessary_null_comparison, prefer_const_constructors, sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AdaptativeDatePicker extends StatelessWidget {

  final DateTime selectedDate;
  final Function(DateTime) onDateChange;

  AdaptativeDatePicker({
    required this.selectedDate,
    required this.onDateChange
  });

  _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2020), 
      lastDate: DateTime.now()
    ).then((pickDate) {
      if (pickDate == null) {
        return;
      }
      onDateChange(pickDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
      ? Container(
        height: 180,
        child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            minimumDate: DateTime(2019),
            maximumDate: DateTime.now(),
            onDateTimeChanged: onDateChange
          ),
      )
      : Container(
          height: 70,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  selectedDate == null 
                    ? "Nenhuma data selecionada"
                    : "Data selecionada: ${DateFormat('dd/MM/y').format(selectedDate)}",
                ),
              ),
              TextButton(
                onPressed: () => _showDatePicker(context), 
                child: Text(
                  "Selecionar Data",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ],
          ),
      );
  }
}