import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.',
      style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
      ),
      ),
      trailing: TaskCheckBox(
          isChecked: isChecked,
          toogleCheckbox: (bool newValue){
            setState(() {
              isChecked = newValue;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  TaskCheckBox({this.isChecked, this.toogleCheckbox});

  final isChecked;
  final Function toogleCheckbox;


  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: toogleCheckbox,
    );
  }
}