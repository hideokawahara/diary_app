import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy toy'),
    Task(name: 'buuy buuy'),
    Task(name: 'buuuuuu'),
  ];
}
