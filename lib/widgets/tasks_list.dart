import 'package:diary_app/models/task_date.dart';
import 'package:diary_app/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:diary_app/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkBoxState2) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
