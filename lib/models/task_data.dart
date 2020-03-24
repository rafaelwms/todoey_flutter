import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [

  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}