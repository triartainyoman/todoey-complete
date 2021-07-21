import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
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
              controller: controller,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: () {
                addTaskCallback(controller.text);
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
