import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);

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
                addTaskCallBack(taskText);
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
