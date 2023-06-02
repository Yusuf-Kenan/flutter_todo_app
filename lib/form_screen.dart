import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyFormWidget extends StatefulWidget {
  const MyFormWidget({super.key});

  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  TextEditingController _tcontrol = TextEditingController();
  List todoList = [];

  todoAdd() {
    setState(() {
      todoList.add(_tcontrol.text);
      _tcontrol.clear();
    });
  }

  todoCelete() {
    setState(() {
      todoList.remove(_tcontrol.text);
      _tcontrol.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _tcontrol,
              decoration: InputDecoration(
                hintText: "Type your ToDo",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: myPrimaryColor,
                      width: 2,
                    )),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 45,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: myPrimaryColor,
                    shape: const StadiumBorder()),
                onPressed: () {
                  todoAdd();
                },
                child: const Text(
                  "ADD",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          todoList.isNotEmpty
              ? Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: todoList.length,
                        itemBuilder: (context, index) => Card(
                              child: ListTile(
                                title: Text(todoList[index]),
                              ),
                            )),
                  ),
                )
              : const Center(
                  child: Text("No Data..."),
                ),
        ],
      ),
    );
  }
}

const Color myPrimaryColor = Colors.teal;
