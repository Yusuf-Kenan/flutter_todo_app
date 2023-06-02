import 'package:flutter/material.dart';
import 'package:todo_app/form_screen.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeScreen(),
    );
  }
}
