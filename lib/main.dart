import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/data_respository/db_helper.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/screens/splach_screen.dart';
import 'package:todo_db_provider/ui/screens/todo_main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<TodoClass>(
        create: (context) {
          return TodoClass();
        },
        child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: Provider.of<TodoClass>(context).isDarkMode
          ? ThemeData.dark()
          : ThemeData.light(),
      title: 'gsk',
      home: SplachScreen(),
    );
  }
}
