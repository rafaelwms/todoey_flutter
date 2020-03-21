
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].name,
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkboxCallBack: (newValue) {
          //setState(() {
          //  widget.tasks[index].toogleDone();
          //});
        },
      );
    },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}