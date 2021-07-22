import 'package:flutter/foundation.dart';
import 'package:todoey_flutter_complete/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Coffee"),
    Task(name: "Buy Tea"),
    Task(name: "Buy Macbook"),
  ];

  // Make a getter to count the length of tasks
  int get taskCount {
    return tasks.length;
  }
}
