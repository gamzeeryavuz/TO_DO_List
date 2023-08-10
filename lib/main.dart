import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/task.data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 

      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),

      ),
    );
  }
}
