import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {

    final languages = ["Python", "Go", "TypeScript", "C++"];

    return Scaffold(
      appBar: AppBar(
        title: Text('Curso de Flutter'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final lang = languages[index];
            return ListTile(
              title: Text(lang),
            );
          },
        ),
      ),
    );
  }
}