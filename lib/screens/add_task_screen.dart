import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String taskText;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                color: Colors.lightBlueAccent)
      ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText){
            taskText = newText;
          },
        ),
            FlatButton(
              onPressed: (){
                    Provider.of<TaskData>(context).addTask(taskText);
                    Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text('Add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
