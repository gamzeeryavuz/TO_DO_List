import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/taskScreen.dart';
import 'package:flutter_application_1/widgets/task_tile.dart';
import 'package:flutter_application_1/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/task.data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);

                /*   setState(() {
                  widget.tasks[index].toggleDone();
                });
                */
              },
              longPressCallback: () {

                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
