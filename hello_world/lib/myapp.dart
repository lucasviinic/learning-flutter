import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomePage()
      )
    );
  }
}