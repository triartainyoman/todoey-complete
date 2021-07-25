import 'package:flutter/foundation.dart';
import 'package:todoey_flutter_complete/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Coffee"),
    Task(name: "Buy Tea"),
    Task(name: "Buy Macbook"),
  ];

  // Make a getter for reading _tasks
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // Make a getter to count the length of tasks
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
