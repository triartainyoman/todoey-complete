import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_complete/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
