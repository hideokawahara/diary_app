import 'package:diary_app/models/task.dart';
import 'package:diary_app/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkBoxState2) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
