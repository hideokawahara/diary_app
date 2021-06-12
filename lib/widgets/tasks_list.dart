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
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkBoxState2) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
