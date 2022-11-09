import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/screens/test_screen.dart';

class TodoMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo Main Page'),
          actions: [
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheckboxListTile(
                title: Text(Provider.of<TodoClass>(context).isAccepted
                    ? 'Thanks, you juse have accepted my conditions'
                    : 'you have to accept my conditions'),
                value: Provider.of<TodoClass>(context).isAccepted,
                onChanged: (value) {
                  Provider.of<TodoClass>(context, listen: false)
                      .changeIsAccepted();
                }),
            Text(
              Provider.of<TodoClass>(context).name.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TextScreen();
                  }));
                },
                child: Text('Change Name attribute'))
          ],
        ));
  }
}
/*
1- create class that you will save data in
2- create object for this class above material app
3- use the object in any ui using inherited widget syntax
*/
