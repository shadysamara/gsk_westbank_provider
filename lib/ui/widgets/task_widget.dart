import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/models/task_model.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;
  TaskWidget(this.taskModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: (taskModel.isComplete!) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(10)),
      child: CheckboxListTile(
        secondary: IconButton(
            onPressed: () {
              Provider.of<TodoClass>(context, listen: false)
                  .deleteTask(taskModel);
            },
            icon: Icon(Icons.delete)),
        value: taskModel.isComplete,
        onChanged: (v) {
          Provider.of<TodoClass>(context, listen: false).updateTask(taskModel);
        },
        title: Text(taskModel.title ?? ''),
      ),
    );
  }
}
