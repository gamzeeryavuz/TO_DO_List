import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/task.data.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
        color: Color(0xff757575),
        child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                FloatingActionButton(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  focusColor: Colors.deepOrange,
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newTaskTitle!);

                    Navigator.pop(context);
                  },
                ),
              ],
            )));
  }
}
