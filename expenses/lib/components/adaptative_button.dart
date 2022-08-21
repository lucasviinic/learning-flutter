// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {

  final String label;
  final void Function() onPressed;

  AdaptativeButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS 
      ? CupertinoButton(
          child: Text(label),
          onPressed: onPressed,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
        )
      : ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor
          ),
          child: Text(label),
          onPressed: onPressed, 
        );
  }
}