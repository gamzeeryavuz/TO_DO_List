// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/task.dart';
import 'package:flutter_application_1/screens/add_tasks.dart';
import 'package:flutter_application_1/widgets/task_list.dart';
import 'package:flutter_application_1/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/task.data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )));
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.purpleAccent,
                    ),
                    backgroundColor: Colors.yellowAccent,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'TODOAY',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(
                        
                        color: Colors.deepPurpleAccent,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ));
  }
}
