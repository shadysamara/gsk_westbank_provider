import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<TodoClass>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.completeTasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(provider.completeTasks[index]);
          });
    });
  }
}
