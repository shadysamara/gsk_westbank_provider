import 'package:flutter/material.dart';
import 'package:todo_db_provider/ui/screens/todo_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'gsk',
      home: TodoMainScreen(),
    );
  }
}
