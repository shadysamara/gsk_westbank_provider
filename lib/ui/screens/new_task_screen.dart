import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';

class NewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Task Screen'),
      ),
      body: Consumer<TodoClass>(builder: (context, provider, x) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: provider.textEditingController,
              decoration: const InputDecoration(label: Text('Task Title')),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () async {
                  await provider.insertNewTask();
                  Navigator.pop(context);
                },
                child: const Text('Add New Task'))
          ],
        );
      }),
    );
  }
}
