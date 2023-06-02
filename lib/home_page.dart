import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/form_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO List"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 25,
            ),
            Expanded(child: MyFormWidget()),
          ],
        ),
      ),
    );
  }
}

const Color myPrimaryColor = Colors.orangeAccent;
