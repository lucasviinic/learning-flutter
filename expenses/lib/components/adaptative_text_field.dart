// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptativeTextField extends StatelessWidget {

  final TextEditingController controller;
  final Function(String) onSubmitted;
  final String label;
  final TextInputType keyboardType;

  AdaptativeTextField({
    required this.controller,
    required this.onSubmitted,
    required this.label,
    this.keyboardType = TextInputType.text
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
      ? Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CupertinoTextField(
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
            placeholder: label,
            padding: EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 12
            ),
          ),
        )
      : TextField(
          keyboardType: keyboardType,
          controller: controller,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            labelText: label
          ),
        );
  }
}