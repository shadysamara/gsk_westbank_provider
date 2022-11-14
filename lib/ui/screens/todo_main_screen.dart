import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/screens/all_tasks.dart';
import 'package:todo_db_provider/ui/screens/complete_tasks.dart';
import 'package:todo_db_provider/ui/screens/incomplete_tasks.dart';
import 'package:todo_db_provider/ui/screens/new_task_screen.dart';
import 'package:todo_db_provider/ui/screens/test_screen.dart';

class TodoMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Complete',
              ),
              Tab(
                text: 'InComplete',
              )
            ]),
            title: const Text('Todo Main Page'),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NewTaskScreen();
                    }));
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    Provider.of<TodoClass>(context, listen: false)
                        .changeIsDarkMode();
                  },
                  icon: Icon(Provider.of<TodoClass>(context).isDarkMode
                      ? Icons.light_mode
                      : Icons.dark_mode))
            ],
          ),
          body: TabBarView(children: [
            AllTasksScreen(),
            CompleteTasksScreen(),
            InCompleteTasksScreen()
          ])),
    );
  }
}
/*
1- create class that you will save data in
2- create object for this class above material app
3- use the object in any ui using inherited widget syntax
*/
